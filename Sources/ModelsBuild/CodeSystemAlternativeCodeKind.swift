//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.6.0-048af26
//  Copyright 2022 Apple Inc.
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
 None
 
 URL: http://hl7.org/fhir/codesystem-altcode-kind
 */
public enum AlternativeCodeKind: String, FHIRPrimitiveType {
	
	/// The code is an alternative code that can be used in any of the circumstances that the primary code can be used.
	case alternate
	
	/// The code is an alternative to be used when a case insensitive code is required (when the primary codes are case
	/// sensitive).
	case caseInsensitive = "case-insensitive"
	
	/// The code is an alternative to be used when a case sensitive code is required (when the primary codes are case
	/// insensitive).
	case caseSensitive = "case-sensitive"
	
	/// The code should no longer be used, but was used in the past.
	case deprecated
	
	/// The code is an alternative for the primary code that is built using the expression grammar defined by the code
	/// system.
	case expression
}
