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
 ConformanceExpectation
 
 URL: http://hl7.org/fhir/conformance-expectation
 ValueSet: http://hl7.org/fhir/ValueSet/conformance-expectation
 */
public enum ConformanceExpectation: String, FHIRPrimitiveType {
	
	/// Support for the specified capability/requirement is not necessary to be considered conformant, and the
	/// requirement should be considered strictly optional.
	case MAY
	
	/// Support for the specified capability is required to be considered conformant.
	case SHALL
	
	/// Support for the specified capability/requirement is prohibited and should not occur only in any circumstance.
	case SHALLNOT = "SHALL-NOT"
	
	/// Support for the specified capability/requirement is strongly encouraged, and failure to support it should only
	/// occur after careful consideration.
	case SHOULD
	
	/// Support for the specified capability/requirement is strongly discouraged and should occur only after careful
	/// consideration.
	case SHOULDNOT = "SHOULD-NOT"
}
