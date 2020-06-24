//
//  FHIRParserError.swift
//  HealthSoftware
//
//  Copyright 2020 Apple Inc.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.

import Foundation

public struct FHIRParserErrorPosition: CustomStringConvertible {
	public let string: String
	public let location: Int
	
	public init(string: String, location: Int) {
		self.string = string
		self.location = location
	}
	
	public var description: String {
		return "[\(location)] in “\(string)”"
	}
}

// MARK: - FHIRParserErrorPosition

extension FHIRParserErrorPosition: Equatable {
	public static func ==(lhs: FHIRParserErrorPosition, rhs: FHIRParserErrorPosition) -> Bool {
		if lhs.string != rhs.string {
			return false
		}
		if lhs.location != rhs.location {
			return false
		}
		return true
	}
}

// MARK: - FHIRDateParserError

public enum FHIRDateParserError: LocalizedError {
	case invalidSeparator(FHIRParserErrorPosition)
	case invalidYear(FHIRParserErrorPosition)
	case invalidMonth(FHIRParserErrorPosition)
	case invalidDay(FHIRParserErrorPosition)
	case invalidHour(FHIRParserErrorPosition)
	case invalidMinute(FHIRParserErrorPosition)
	case invalidSecond(FHIRParserErrorPosition)
	case invalidTimeZonePrefix(FHIRParserErrorPosition)
	case invalidTimeZoneHour(FHIRParserErrorPosition)
	case invalidTimeZoneMinute(FHIRParserErrorPosition)
	case additionalCharacters(FHIRParserErrorPosition)
	
	public var errorDescription: String? {
		switch self {
		case .invalidSeparator(let position):
			return "Invalid separator at \(position)"
		case .invalidYear(let position):
			return "Invalid year at \(position)"
		case .invalidMonth(let position):
			return "Invalid month at \(position)"
		case .invalidDay(let position):
			return "Invalid day at \(position)"
		case .invalidHour(let position):
			return "Invalid hour at \(position)"
		case .invalidMinute(let position):
			return "Invalid minute at \(position)"
		case .invalidSecond(let position):
			return "Invalid second at \(position)"
		case .invalidTimeZonePrefix(let position):
			return "Invalid time zone prefix at \(position)"
		case .invalidTimeZoneHour(let position):
			return "Invalid time zone hour at \(position)"
		case .invalidTimeZoneMinute(let position):
			return "Invalid time zone minute at \(position)"
		case .additionalCharacters(let position):
			return "Unexpected characters after \(position)"
		}
	}
	
	public var errorPosition: FHIRParserErrorPosition {
		switch self {
		case .invalidSeparator(let position):
			return position
		case .invalidYear(let position):
			return position
		case .invalidMonth(let position):
			return position
		case .invalidDay(let position):
			return position
		case .invalidHour(let position):
			return position
		case .invalidMinute(let position):
			return position
		case .invalidSecond(let position):
			return position
		case .invalidTimeZonePrefix(let position):
			return position
		case .invalidTimeZoneHour(let position):
			return position
		case .invalidTimeZoneMinute(let position):
			return position
		case .additionalCharacters(let position):
			return position
		}
	}
}
