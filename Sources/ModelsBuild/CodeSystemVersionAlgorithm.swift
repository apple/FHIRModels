//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 6.0.0-ballot3
//  Copyright 2025 Apple Inc.
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
	
	/// Versions are expressed as an ISO date/time syntax (including syntaxes with only portions of a date) in the
	/// general format of YYYY-MM-DD (with or without separators). Inclusion of the time portion is optional.
	case date
	
	/// Versions are integers and ordered numerically
	case integer
	
	/// Similar to semver, but having only two components - i.e. a major and minor (integer) version number separated by
	/// a '.'.  The specific nature of what constitutes a major vs. minor increment is locally defined.
	case majorMinor = "major-minor"
	
	/// Sorted according to the algorithm defined here: [naturalordersort.org](http://www.naturalordersort.org/)
	case natural
	
	/// Versions are expressed according to the SNOMED URL scheme. See the
	/// [Versions](https://terminology.hl7.org/SNOMEDCT.html#versions) topic for more details.
	case sctUrl = "sct-url"
	
	/// Uses the semantic versioning scheme as defined in [semver.org](http://semver.org).
	case semver
	
	/// Versions are expressed as an US date format, i.e. MMDDYYYY (with or without separators).
	case usDate = "us-date"
}
