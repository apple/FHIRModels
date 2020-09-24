//
//  FHIRDateComponents.swift
//  HealthSoftware
//
//  2020, Apple Inc.
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

public struct FHIRDateComponents: ExpressibleAsNSDate {
	
	static var calendar = Calendar(identifier: .gregorian)
	
	let year: Int
	let month: UInt8?
	let day: UInt8?
	let hour: UInt8?
	let minute: UInt8?
	let second: Decimal?
	let timeZone: TimeZone?
	
	public init(year: Int, month: UInt8? = nil, day: UInt8? = nil, hour: UInt8? = nil, minute: UInt8? = nil, second: Decimal? = nil, timeZone: TimeZone? = nil) {
		self.year = year
		self.month = month
		self.day = day
		self.hour = hour
		self.minute = minute
		self.second = second
		self.timeZone = timeZone
	}
	
	public func asNSDate() throws -> Date {
		let calendar = Calendar(identifier: .gregorian)
		var dateComponents = DateComponents(calendar: calendar, timeZone: timeZone ?? TimeZone(abbreviation: "GMT"), era: nil, year: year)
		if let month = month {
			dateComponents.month = Int(month)
		}
		
		if let day = day {
			dateComponents.day = Int(day)
		}
		
		if let hour = hour {
			dateComponents.hour = Int(hour)
		}
		
		if let minute = minute {
			dateComponents.minute = Int(minute)
		}
		
		guard var date = dateComponents.date else {
			throw DateExpressionError.unableToExpressAsDate(dateComponents)
		}
		
		if let second = second {
			let seconds = Double(truncating: second as NSNumber)
			date.addTimeInterval(seconds)
		}
		
		return date
	}
	
	public static func dateComponents(from date: Date, with timeZone: TimeZone) throws -> (year: Int, month: UInt8?, day: UInt8?) {
		calendar.timeZone = timeZone
		let components = calendar.dateComponents([.year, .month, .day], from: date)
		guard let year = components.year else {
			throw DateExpressionError.unableToConstructFromDate(date, components)
		}
		return (year, components.month?.asUInt8(), components.day?.asUInt8())
	}
	
	public static func timeComponents(from date: Date, with timeZone: TimeZone) throws -> (hour: UInt8, minute: UInt8, second: Decimal) {
		calendar.timeZone = timeZone
		let components = calendar.dateComponents([.hour, .minute, .second, .nanosecond], from: date)
		guard let hourInt = components.hour,
			  let minuteInt = components.minute,
			  let secondsInt = components.second else {
			throw DateExpressionError.unableToConstructFromDate(date, components)
		}
		
		let hour = UInt8(hourInt)
		let minute = UInt8(minuteInt)
		
		var second: Decimal
		if let nanoseconds = components.nanosecond {
			let secondsFraction = Decimal((Double(nanoseconds) / Double(1000000000)))
			second = secondsFraction + Decimal(secondsInt)
		} else {
			second = Decimal(secondsInt)
		}
		
		return (hour, minute, second)
	}
	
	public static func components(from date: Date, with timeZone: TimeZone) throws -> (year: Int, month: UInt8, day: UInt8, hour: UInt8, minute: UInt8, second: Decimal) {
		let (year, monthComponent, dayComponent) = try dateComponents(from: date, with: timeZone)
		guard let month = monthComponent else {
			let failureComponents = DateComponents(calendar: calendar, timeZone: timeZone, era: nil, year: year, month: nil)
			throw DateExpressionError.unableToConstructFromDate(date, failureComponents)
		}
		guard let day = dayComponent else {
			let failureComponents = DateComponents(calendar: calendar, timeZone: timeZone, era: nil, year: year, month: Int(month), day: nil)
			throw DateExpressionError.unableToConstructFromDate(date, failureComponents)
		}
		let (hour, minute, second) = try timeComponents(from: date, with: timeZone)
		return (year, month, day, hour, minute, second)
	}
}

extension Int {
	fileprivate func asUInt8() -> UInt8 {
		return UInt8(self)
	}
}
