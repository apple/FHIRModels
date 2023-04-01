//
//  DateTime+NSDate.swift
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
import FMCore

extension DateTime: ExpressibleAsNSDate, ConstructibleFromNSDate {
	
	public func asNSDate() throws -> Date {
		let dateComponents = FHIRDateComponents(year: date.year,
												month: date.month,
												day: date.day,
												hour: time?.hour,
												minute: time?.minute,
												second: time?.second,
												timeZone: timeZone)
		return try dateComponents.asNSDate()
	}
	
	public init(date: Date, timeZone: TimeZone = TimeZone.current) throws {
		self.timeZone = timeZone
		self.date = try FHIRDate(date: date, timeZone: timeZone)
		self.time = try FHIRTime(date: date, timeZone: timeZone)
		self.originalTimeZoneString = nil
	}
}
