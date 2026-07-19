import struct Foundation.Decimal
import struct Foundation.TimeZone
import protocol Foundation.LocalizedError


private let asciiDigits: ClosedRange<UInt8> = 0x30...0x39


func isAsciiDigit(_ char: Character) -> Bool {
    if let value = char.asciiValue {
        asciiDigits.contains(value)
    } else {
        false
    }
}


struct DateTimeParseError: LocalizedError, CustomStringConvertible {
    enum Kind {
        case invalidInput(reason: String)
        case unsupportedLiteral
        // Component-specific kinds, mirroring the legacy `FHIRDateParserError` taxonomy
        // so errors can be translated (and compared) 1:1 across the two engines.
        case invalidSeparator
        case invalidYear
        case invalidMonth
        case invalidDay
        case invalidHour
        case invalidMinute
        case invalidSecond
        case invalidTimeZonePrefix
        case invalidTimeZoneHour
        case invalidTimeZoneMinute
        case additionalCharacters
    }

    let input: String
    let range: Range<String.Index>
    let kind: Kind
    
    var description: String {
        let startOffset = input.distance(from: input.startIndex, to: range.lowerBound)
        let endOffset = input.distance(from: input.startIndex, to: range.upperBound)
        return """
            ParseError(
                kind: \(kind)
                range: \(startOffset)..<\(endOffset) ('\(input[range])')
                input: '\(input)'
            )
            """
    }
    
    init<Input: StringProtocol>(input: Input, range: Range<Input.Index>, kind: Kind) {
        self.input = String(input)
        self.range = range.lowerBound.samePosition(in: self.input)!..<range.upperBound.samePosition(in: self.input)!
        self.kind = kind
    }
}


/// Parser for FHIR `Date`, `Time`, `DateTime`, and `Instant` values.
package struct DateTimeLiteralParser<Input: StringProtocol>: ~Copyable {
    typealias ParseError = DateTimeParseError
    
    private let config: DateTimeParserConfig
    private let input: Input
    private var position: Input.Index
    
    fileprivate init(config: DateTimeParserConfig, input: Input, position: Input.Index) {
        self.config = config
        self.input = input
        self.position = position
    }
    
    private var current: Character? {
        input[safe: position]
    }
    private var isAtEnd: Bool {
        position >= input.endIndex
    }
    
    private mutating func consume(_ count: Int = 1) {
        input.formIndex(&position, offsetBy: count)
    }
    
    private func makeError(_ kind: ParseError.Kind, in range: Range<Input.Index>) -> ParseError {
        ParseError(input: input, range: range, kind: kind)
    }
    
    private func makeError(_ kind: ParseError.Kind, at position: Input.Index) -> ParseError {
        ParseError(
            input: input,
            range: (position < input.endIndex ? position : input.endIndex)..<(position < input.endIndex ? input.index(after: position) : input.endIndex),
            kind: kind
        )
    }
    
    /// Checks that the current token is equal to the specified expected value.
    /// If yes, the token is consumed (i.e., the position is advanced by 1).
    /// - Throws: if the current token is not equal to the specified expected value.
    private mutating func expectAndConsume(_ expected: Character, errorKind: ParseError.Kind? = nil) throws(ParseError) {
        if current == expected {
            consume()
        } else {
            throw makeError(errorKind ?? .invalidInput(reason: "Expected \(expected); got \(String(describing: current))"), at: position)
        }
    }
    
    /// Checks that the current token is equal to one of the specified expected values.
    /// If yes, the token is consumed (i.e., the position is advanced by 1).
    /// - parameter expected: Non-empty list of tokens we allow to appear at the current position.
    /// - Throws: if the current token is not equal to the specified expected value.
    /// - Returns: the token that matched.
    private mutating func expectAndConsume(anyOf expected: [Character], errorKind: ParseError.Kind? = nil) throws(ParseError) -> Character {
        if let current, expected.contains(current) {
            consume()
            return current
        } else {
            throw makeError(
                errorKind ?? .invalidInput(reason: "Expected \(expected); got \(String(describing: current))"),
                at: position
            )
        }
    }
}


extension DateTimeLiteralParser {
    private enum IntParsingNumDigitsRule {
        case exactly(Int)
        case atMost(Int)
    }
    
    /// Parses a decimal `Int`, consuming its digits and returning the resulting value.
    /// - Note: This function will consume tokens until it reaches the first which is not an ASCII decimal digit character.
    /// - Throws: if, when the function is called, the first token is not a decimal digit.
    private mutating func parseInt<I: FixedWidthInteger>(_: I.Type = Int.self, numDigitsRule: IntParsingNumDigitsRule? = nil, errorKind: ParseError.Kind? = nil) throws(ParseError) -> I {
        guard !isAtEnd else {
            throw makeError(errorKind ?? .invalidInput(reason: "Expected ASCII digit; found EOF"), at: position)
        }
        let startPos = position
        let digits = input[position...].prefix { isAsciiDigit($0) }
        guard !digits.isEmpty else {
            throw makeError(errorKind ?? .invalidInput(reason: "Expected ASCII digit; found \(String(describing: current))"), at: position)
        }
        consume(digits.count)
        let literalRange = startPos..<position
        switch numDigitsRule {
        case nil:
            break
        case .exactly(let limit):
            guard digits.count == limit else {
                throw makeError(errorKind ?? .invalidInput(reason: "Expected \(limit)-digit integer literal; but found \(digits.count) digit(s)"), in: literalRange)
            }
        case .atMost(let limit):
            guard digits.count <= limit else {
                throw makeError(errorKind ?? .invalidInput(reason: "Expected \(limit)-digit integer literal; but found \(digits.count) digit(s)"), in: literalRange)
            }
        }
        var value: I = 0
        for digit in digits {
            let multiplyResult = value.multipliedReportingOverflow(by: 10)
            guard !multiplyResult.overflow else {
                throw makeError(errorKind ?? .invalidInput(reason: "integer literal overflow"), in: literalRange)
            }
            value = multiplyResult.partialValue
            // SAFETY: we know that current is an ascii character, and we know that the "0" literal is an ascii character.
            // Therefore, we can safely access the asciiValue for both of them.
            value += I(digit.asciiValue! - ("0" as Character).asciiValue!) // swiftlint:disable:this force_unwrapping
        }
        return value
    }
    
    
    private mutating func parseDecimal(
        integerPartDigitsLimit: IntParsingNumDigitsRule?,
        fractionPartDigitsLimit: IntParsingNumDigitsRule?,
        allowOmittingFractionalPart: Bool,
        errorKind: ParseError.Kind
    ) throws(ParseError) -> (decimal: Decimal, integerPart: Int) {
        guard !isAtEnd else {
            throw makeError(errorKind, at: position)
        }
        let startPos = position
        let integerPart = input[position...].prefix { isAsciiDigit($0) }
        guard !integerPart.isEmpty else {
            throw makeError(errorKind, at: position)
        }
        switch integerPartDigitsLimit {
        case nil:
            break
        case .exactly(let limit):
            guard integerPart.count == limit else {
                throw makeError(errorKind, at: position)
            }
        case .atMost(let limit):
            guard integerPart.count <= limit else {
                throw makeError(errorKind, at: position)
            }
        }
        consume(integerPart.count)
        let fractionPart: Input.SubSequence // empty if no fraction present
        if current == "." {
            consume()
            // parse fractional part
            fractionPart = input[position...].prefix { isAsciiDigit($0) }
            guard !fractionPart.isEmpty else {
                throw makeError(errorKind, at: position) // TODO better error!
            }
            switch fractionPartDigitsLimit {
            case nil:
                break
            case .exactly(let limit):
                guard fractionPart.count == limit else {
                    throw makeError(errorKind, at: position)
                }
            case .atMost(let limit):
                guard fractionPart.count <= limit else {
                    throw makeError(errorKind, at: position)
                }
            }
            consume(fractionPart.count)
        } else {
            // integer part not followed by a "."
            if allowOmittingFractionalPart {
                fractionPart = input[integerPart.endIndex..<integerPart.endIndex]
            } else {
                throw makeError(errorKind, in: startPos..<position)
            }
        }
        let decimal = Decimal(asciiIntegerDigits: integerPart.utf8, asciiFractionDigits: fractionPart.utf8)
        return (decimal, Int(integerPart)!)
    }
}


extension Decimal {
    /// Creates a `Decimal` from two collections of ASCII digits..
    ///
    /// For example,`"17".utf8` and `"239".utf8` would produce a Decimal with value `17.239`.
    ///
    /// - parameter integerDigits: The digits making up the decimal's integer part.
    /// - parameter fractionDigits: The digits making up the decimal's fraction part.
    ///
    /// - Invariant: Both collections must contain only ASCII digits (`0x30...0x39`). No validation is performed.
    @specialized(where I == String.UTF8View, F == String.UTF8View)
    @specialized(where I == Substring.UTF8View, F == Substring.UTF8View)
    init<I: Collection<UInt8>, F: Collection<UInt8>>(asciiIntegerDigits integerDigits: I, asciiFractionDigits fractionDigits: F) {
        let fractionCount = fractionDigits.count
        if integerDigits.count + fractionCount <= 19 {
            var mantissa: UInt64 = 0
            for byte in integerDigits { mantissa = mantissa &* 10 &+ UInt64(byte &- 48) }
            for byte in fractionDigits { mantissa = mantissa &* 10 &+ UInt64(byte &- 48) }
            self.init(sign: .plus, exponent: -fractionCount, significand: Decimal(mantissa))
        } else {
            var spelling = String(decoding: integerDigits, as: UTF8.self)
            if fractionCount > 0 {
                spelling += "."
                spelling += String(decoding: fractionDigits, as: UTF8.self)
            }
            self = Decimal(string: spelling)!  // digit-run contract guarantees this parses
        }
    }
}


extension DateTimeLiteralParser {
    fileprivate enum TimeZoneValidation {
        /// `(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))`
        case strict
    }
    
    /// Parses a time zone, and validates it.
    fileprivate mutating func parseTimeZoneComponent(
        validation: TimeZoneValidation
    ) throws(ParseError) -> (secondsFromGMT: Int, timeZoneString: Input.SubSequence) {
        let startPos = position
        guard current != "Z" else {
            // if the time zone is 'Z', it is interpreted as UTC.
            consume()
            return (0, input[startPos..<position])
        }
        let `operator`: Character
        let hours: Int
        let minutes: Int
        switch validation {
        case .strict:
            // The dedicated field parsers replicate the legacy engine's error kinds and positions,
            // including the ±14:00 range rules.
            `operator` = try expectAndConsume(anyOf: ["+", "-"], errorKind: .invalidTimeZonePrefix)
            hours = try _parseTimeZoneHour()
            try expectAndConsume(":", errorKind: .invalidSeparator)
            minutes = try _parseTimeZoneMinute(hours: hours)
        }
        let timeZoneString = input[startPos..<position]
        var offsetInSeconds = 0
        offsetInSeconds += hours * 60 * 60
        offsetInSeconds += minutes * 60
        offsetInSeconds *= `operator` == "-" ? -1 : 1
        return (offsetInSeconds, timeZoneString)
    }
    
    /// Parses a 2-digit timezone hour offset.
    private mutating func _parseTimeZoneHour() throws(ParseError) -> Int {
        let start = position
        let digits = input[position...].prefix { isAsciiDigit($0) }
        guard !digits.isEmpty else {
            throw makeError(.invalidTimeZoneHour, at: start)
        }
        consume(digits.count)
        guard digits.count == 2 else {
            throw makeError(.invalidSeparator, at: input.index(start, offsetBy: min(2, digits.count)))
        }
        let value = Int(digits)! // SAFETY: we've verified above that `digits` contains only ASCII digits.
        guard value <= 14 else {
            throw makeError(.invalidTimeZoneHour, in: start..<position)
        }
        return value
    }
    
    /// Parses a 2-digit timezone minute offset.
    private mutating func _parseTimeZoneMinute(hours: Int) throws(ParseError) -> Int {
        let start = position
        let digits = input[position...].prefix { isAsciiDigit($0) }
        guard !digits.isEmpty else {
            throw makeError(.invalidTimeZoneMinute, at: start)
        }
        consume(digits.count)
        guard digits.count <= 2 else {
            throw makeError(.additionalCharacters, at: input.index(start, offsetBy: 2))
        }
        guard digits.count == 2 else {
            throw makeError(.invalidTimeZoneMinute, in: start..<position)
        }
        let value = Int(digits)! // SAFETY: we've verified above that `digits` contains only ASCII digits.
        guard value <= 59, hours < 14 || value == 0 else {
            throw makeError(.invalidTimeZoneMinute, in: start..<position)
        }
        return value
    }
}



extension DateTimeLiteralParser {
    private func validating<V: ValidatableParseResult>(_ value: V, errorRangeStartPos: Input.Index) throws(ParseError) -> V {
        switch value.validate(using: config) {
        case .valid:
            return value
        case .invalid(let errorKind):
            throw makeError(errorKind, in: errorRangeStartPos..<position)
        }
    }
}


extension DateTimeLiteralParser {
    fileprivate mutating func parseInstant() throws(ParseError) -> ParsedInstant {
        // YYYY-MM-DDThh:mm:ss.sss+zz:zz
        let startPos = position
        let date = try parseInstantDate()
        try expectAndConsume("T", errorKind: .invalidSeparator)
        let time = try parseTime()
        let (timeZoneOffset, timeZoneString) = try parseTimeZoneComponent(validation: .strict)
        guard let timeZone = TimeZone(secondsFromGMT: timeZoneOffset) else {
            throw makeError(.invalidTimeZoneHour, at: startPos) // TODO not necessarily the hour. maybe collapse the cases to only invalidTimeZone?
        }
        let result = ParsedInstant(date: date, time: .init(time: time, timeZone: timeZone, timeZoneString: String(timeZoneString)))
        return try validating(result, errorRangeStartPos: startPos)
    }
    
    fileprivate mutating func parseInstantDate() throws(ParseError) -> ParsedInstant.Date {
        let startPos = position
        let year = try parseYear(validate: false) // we skip validation here as we will validate the whole result at the end.
        try expectAndConsume("-", errorKind: .invalidSeparator)
        let monthStart = position
        let month = try parseInt(UInt8.self, numDigitsRule: .exactly(2), errorKind: .invalidMonth)
        guard month > 0, month <= 12 else {
            throw makeError(.invalidMonth, in: monthStart..<position)
        }
        try expectAndConsume("-", errorKind: .invalidSeparator)
        let day = try parseInt(UInt8.self, numDigitsRule: .exactly(2), errorKind: .invalidDay)
        let result = ParsedInstant.Date(year: year, month: month, day: day)
        return try validating(result, errorRangeStartPos: startPos)
    }
    
    
    fileprivate mutating func parseTime() throws(ParseError) -> ParsedTime {
        let startPos = position
        let hour = try parseClockField(errorKind: .invalidHour)
        try expectAndConsume(":", errorKind: .invalidSeparator)
        let minute = try parseClockField(errorKind: .invalidMinute)
        try expectAndConsume(":", errorKind: .invalidSeparator)
        let secondsStringStart = position
        let second = try parseDecimal(
            integerPartDigitsLimit: .exactly(2),
            fractionPartDigitsLimit: config.maxFractionalSecondDigits.map { .atMost($0) },
            allowOmittingFractionalPart: true,
            errorKind: .invalidSecond
        )
        let result = ParsedTime(
            hour: hour,
            minute: minute,
            second: second.decimal,
            secondIntegerPart: UInt8(truncatingIfNeeded: second.integerPart),
            originalSecondsString: String(input[secondsStringStart..<position])
        )
        return try validating(result, errorRangeStartPos: startPos)
    }
    
    
    fileprivate mutating func parseDate() throws(ParseError) -> ParsedDate {
        // YYYY, YYYY-MM, or YYYY-MM-DD
        let startPos = position
        let year = try parseYear(validate: false)
        guard current == "-" else {
            return try validating(.init(year: year), errorRangeStartPos: startPos)
        }
        consume()
        let month = try parseInt(UInt8.self, numDigitsRule: .exactly(2), errorKind: .invalidMonth)
        guard current == "-" else {
            return try validating(.init(year: year, month: month), errorRangeStartPos: startPos)
        }
        consume()
        let day = try parseInt(UInt8.self, numDigitsRule: .exactly(2), errorKind: .invalidDay)
        return try validating(.init(year: year, month: month, day: day), errorRangeStartPos: startPos)
    }
    
    
    fileprivate mutating func parseDateTime() throws(ParseError) -> ParsedDateTime {
        // YYYY
        // YYYY-MM
        // YYYY-MM-DD
        // YYYY-MM-DDThh:mm:ss+zz:zz
        let startPos = position
        let date = try parseDate()
        guard current == "T" else {
            return try validating(.init(date: date, time: nil), errorRangeStartPos: startPos)
        }
        consume()
        let time = try parseTime()
        let (timeZoneOffset, timeZoneString) = try parseTimeZoneComponent(validation: .strict)
        guard let timeZone = TimeZone(secondsFromGMT: timeZoneOffset) else {
            throw makeError(.invalidTimeZoneHour, in: startPos..<position)
        }
        let result = ParsedDateTime(date: date, time: .init(time: time, timeZone: timeZone, timeZoneString: String(timeZoneString)))
        return try validating(result, errorRangeStartPos: startPos)
    }
}




extension DateTimeLiteralParser {
    /// Checks that the parser has reached the end of the input, and throws an error if not.
    fileprivate func expectIsAtEnd() throws(ParseError) {
        guard isAtEnd else {
            throw makeError(.additionalCharacters, in: position..<input.endIndex)
        }
    }
    
    private mutating func parseClockField(errorKind: ParseError.Kind) throws(ParseError) -> UInt8 {
        let start = position
        let digits = input[position...].prefix { isAsciiDigit($0) }
        guard !digits.isEmpty else {
            throw makeError(errorKind, at: start)
        }
        consume(digits.count)
        guard digits.count == 2 else {
            throw makeError(.invalidSeparator, at: position)
        }
        return UInt8(digits)! // SAFETY: we've verified above that `digits` contains only ASCII digits.
    }
    
    /// Parses a "year" value, and optionally validates it against the current config.
    private mutating func parseYear(validate: Bool) throws(ParseError) -> Int {
        let startPos = position
        let isNegative: Bool
        if current == "-" {
            guard config.allowedYears.lowerBound < 0 else {
                throw makeError(.invalidYear, at: position)
            }
            consume()
            isNegative = true
        } else {
            isNegative = false
        }
        var year = try parseInt(numDigitsRule: .exactly(4), errorKind: .invalidYear)
        year *= isNegative ? -1 : 1
        guard !validate || config.allowedYears.contains(year) else {
            throw makeError(.invalidYear, at: startPos)
        }
        return year
    }
}


// MARK: Parsed Components Validation


private protocol ValidatableParseResult {
    func validate(using config: DateTimeParserConfig) -> ParsedInstant.Date.ValidationResult
}

extension ParsedInstant.Date: ValidatableParseResult {
    enum ValidationResult {
        case valid
        case invalid(DateTimeParseError.Kind)
    }
    
    /// Zero-indexed month-length lookup. Not aware of leap years. January is at position `0`, December at `11`.
    private static let monthLengths: [UInt8] = [
        31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31
    ]
    
    func validate(using config: DateTimeParserConfig) -> ValidationResult {
        guard config.allowedYears.contains(year) else {
            return .invalid(.invalidYear)
        }
        guard (1...12).contains(month) else {
            return .invalid(.invalidMonth)
        }
        var daysInMonth = Self.monthLengths[Int(month - 1)]
        if month == 2, (year.isMultiple(of: 4) && !year.isMultiple(of: 100)) || year.isMultiple(of: 400) {
            daysInMonth += 1
        }
        guard (1...daysInMonth).contains(day) else {
            return .invalid(.invalidDay)
        }
        return .valid
    }
}

extension ParsedDate: ValidatableParseResult {
    func validate(using config: DateTimeParserConfig) -> ParsedInstant.Date.ValidationResult {
        guard config.allowedYears.contains(year) else {
            return .invalid(.invalidYear)
        }
        switch (month, day) {
        case (.none, .none):
            return .valid
        case (.some(let month), .none):
            return (1...12).contains(month) ? .valid : .invalid(.invalidMonth)
        case (.some(let month), .some(let day)):
            return ParsedInstant.Date(year: year, month: month, day: day).validate(using: config)
        case (.none, .some):
            // day without month is not allowed
            return .invalid(.invalidMonth)
        }
    }
}

extension ParsedTime: ValidatableParseResult {
    func validate(using config: DateTimeParserConfig) -> ParsedInstant.Date.ValidationResult {
        guard (0...23).contains(hour) else {
            return .invalid(.invalidHour)
        }
        guard (0...59).contains(minute) else {
            return .invalid(.invalidMinute)
        }
        guard (0...(config.allowLeapSecond60 ? 60 : 59)).contains(secondIntegerPart) else {
            return .invalid(.invalidSecond)
        }
        return .valid
    }
}

extension ParsedDateTime: ValidatableParseResult {
    func validate(using config: DateTimeParserConfig) -> ParsedInstant.Date.ValidationResult {
        if let time {
            guard date.month != nil else {
                // if there is a time, we must also have a month.
                return .invalid(.invalidMonth)
            }
            guard date.day != nil else {
                // if there is a time, we must also have a day.
                return .invalid(.invalidDay)
            }
            switch date.validate(using: config) {
            case .valid:
                return time.time.validate(using: config)
            case .invalid(let kind):
                return .invalid(kind)
            }
        } else {
            // date-only
            return date.validate(using: config)
        }
    }
}

extension ParsedInstant: ValidatableParseResult {
    func validate(using config: DateTimeParserConfig) -> ParsedInstant.Date.ValidationResult {
        switch date.validate(using: config) {
        case .invalid(let kind):
            return .invalid(kind)
        case .valid:
            return time.time.validate(using: config)
        }
    }
}


package enum NewDateTimeParser: DateTimeParserProtocol {
    @specialized(where Input == String)
    @specialized(where Input == Substring)
    package static func dateComponents<Input: StringProtocol>(from input: Input, config: DateTimeParserConfig) throws -> ParsedDate {
        var parser = DateTimeLiteralParser(config: config, input: input, position: input.startIndex)
        let date = try parser.parseDate()
        try parser.expectIsAtEnd()
        return date
    }
    
    @specialized(where Input == String)
    @specialized(where Input == Substring)
    package static func instantDateComponents<Input: StringProtocol>(from input: Input, config: DateTimeParserConfig) throws -> ParsedInstant.Date {
        var parser = DateTimeLiteralParser(config: config, input: input, position: input.startIndex)
        let date = try parser.parseInstantDate()
        try parser.expectIsAtEnd()
        return date
    }
    
    @specialized(where Input == String)
    @specialized(where Input == Substring)
    package static func timeComponents<Input: StringProtocol>(from input: Input, config: DateTimeParserConfig) throws -> ParsedTime {
        var parser = DateTimeLiteralParser(config: config, input: input, position: input.startIndex)
        let time = try parser.parseTime()
        try parser.expectIsAtEnd()
        return time
    }
    
    @specialized(where Input == String)
    @specialized(where Input == Substring)
    package static func dateTimeComponents<Input: StringProtocol>(from input: Input, config: DateTimeParserConfig) throws -> ParsedDateTime {
        var parser = DateTimeLiteralParser(config: config, input: input, position: input.startIndex)
        let result = try parser.parseDateTime()
        try parser.expectIsAtEnd()
        return result
    }
    
    @specialized(where Input == String)
    @specialized(where Input == Substring)
    package static func instantComponents<Input: StringProtocol>(from input: Input, config: DateTimeParserConfig) throws -> ParsedInstant {
        var parser = DateTimeLiteralParser(config: config, input: input, position: input.startIndex)
        let instant = try parser.parseInstant()
        try parser.expectIsAtEnd()
        return instant
    }
    
    @specialized(where Input == String)
    @specialized(where Input == Substring)
    package static func timeZoneComponents<Input: StringProtocol>(from input: Input, config: DateTimeParserConfig) throws -> ParsedTimeZone {
        var parser = DateTimeLiteralParser(config: config, input: input, position: input.startIndex)
        let result = try parser.parseTimeZoneComponent(validation: .strict)
        try parser.expectIsAtEnd()
        return ParsedTimeZone(secondsFromGMT: result.secondsFromGMT, timeZoneString: String(result.timeZoneString))
    }
}



// MARK: Utilities

extension Collection {
    fileprivate subscript(safe idx: Index) -> Element? {
        idx >= startIndex && idx < endIndex ? self[idx] : nil
    }
}
