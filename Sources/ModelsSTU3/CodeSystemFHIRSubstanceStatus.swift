//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 3.0.1.11917
//  Copyright 2020 Apple Inc.
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
 A code to indicate if the substance is actively used
 
 URL: http://hl7.org/fhir/substance-status
 ValueSet: http://hl7.org/fhir/ValueSet/substance-status
 */
public enum FHIRSubstanceStatus: String, FHIRPrimitiveType {
	
	/// The substance is considered for use or reference
	case active = "active"
	
	/// The substance is considered for reference, but not for use
	case inactive = "inactive"
	
	/// The substance was entered in error
	case enteredInError = "entered-in-error"
}
