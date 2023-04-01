//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 5.0.0
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
 Indicates the mechanism used to compare versions to determine which is more current.
 
 URL: http://hl7.org/fhir/version-algorithm
 ValueSet: http://hl7.org/fhir/ValueSet/version-algorithm
 */
public enum VersionAlgorithm: String, FHIRPrimitiveType {
	
	/// Simple alphabetic sort on a case-insensitive and accent-insensitive basis.  (Sorting of different cases or
	/// accented versions of a character is indeterminate)
	case alpha
	
	/// Versions are expressed as an ISO date/time syntax (including syntaxes with only portions of a date)
	case date
	
	/// Versions are integers and ordered numerically
	case integer
	
	/// Sorted according to the algorithm defined here: [naturalordersort.org](http://www.naturalordersort.org/)
	case natural
	
	/// Uses the semantic versioning scheme as defined in [semver.org](http://semver.org).
	case semver
}
