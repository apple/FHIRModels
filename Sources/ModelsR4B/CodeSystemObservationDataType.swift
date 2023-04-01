//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.3.0
//  Copyright 2023 Apple Inc.
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

import FMCore

/**
 Permitted data type for observation value.
 
 URL: http://hl7.org/fhir/permitted-data-type
 ValueSet: http://hl7.org/fhir/ValueSet/permitted-data-type
 */
public enum ObservationDataType: String, FHIRPrimitiveType {
	
	/// true or false.
	case boolean
	
	/// A coded concept from a reference terminology and/or text.
	case codeableConcept = "CodeableConcept"
	
	/// A date, date-time or partial date (e.g. just year or year + month) as used in human communication.
	case dateTime
	
	/// A signed integer.
	case integer
	
	/// A time range defined by start and end date/time.
	case period = "Period"
	
	/// A measured amount.
	case quantity = "Quantity"
	
	/// A set of values bounded by low and high.
	case range = "Range"
	
	/// A ratio of two Quantity values - a numerator and a denominator.
	case ratio = "Ratio"
	
	/// A series of measurements taken by a device.
	case sampledData = "SampledData"
	
	/// A sequence of Unicode characters.
	case string
	
	/// A time during the day, in the format hh:mm:ss.
	case time
}
