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
 The phase of testing for this artifact.
 
 URL: http://hl7.org/fhir/testscript-scope-phase-codes
 ValueSet: http://hl7.org/fhir/ValueSet/testscript-scope-phase-codes
 */
public enum TestScriptScopePhaseType: String, FHIRPrimitiveType {
	
	/// The internal system to system phase.
	case integration
	
	/// The live system to system phase (Note, this may involve pii/phi data).
	case production
	
	/// The development or implementation phase.
	case unit
}
