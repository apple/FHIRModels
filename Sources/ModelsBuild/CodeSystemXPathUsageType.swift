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
 How a search parameter relates to the set of elements returned by evaluating its xpath query.
 
 URL: http://hl7.org/fhir/search-xpath-usage
 ValueSet: http://hl7.org/fhir/ValueSet/search-xpath-usage
 */
public enum XPathUsageType: String, FHIRPrimitiveType {
	
	/// The search parameter is based on a spatial transform of the selected nodes, using physical distance from the
	/// middle.
	case distance
	
	/// The search parameter is based on a spatial transform of the selected nodes.
	case nearby
	
	/// The search parameter is derived directly from the selected nodes based on the type definitions.
	case normal
	
	/// The interpretation of the xpath statement is unknown (and can't be automated).
	case other
	
	/// The search parameter is derived by a phonetic transform from the selected nodes.
	case phonetic
}
