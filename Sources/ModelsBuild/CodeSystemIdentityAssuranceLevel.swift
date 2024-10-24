//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 6.0.0-ballot2
//  Copyright 2024 Apple Inc.
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
 The level of confidence that this link represents the same actual person, based on NIST Authentication Levels.
 
 URL: http://hl7.org/fhir/identity-assuranceLevel
 ValueSet: http://hl7.org/fhir/ValueSet/identity-assuranceLevel
 */
public enum IdentityAssuranceLevel: String, FHIRPrimitiveType {
	
	/// Little or no confidence in the asserted identity's accuracy.
	case level1
	
	/// Some confidence in the asserted identity's accuracy.
	case level2
	
	/// High confidence in the asserted identity's accuracy.
	case level3
	
	/// Very high confidence in the asserted identity's accuracy.
	case level4
}
