//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.5.0-a621ed4bdc
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
 Overall nature of the adverse event, e.g. real or potential.
 
 URL: http://hl7.org/fhir/adverse-event-actuality
 ValueSet: http://hl7.org/fhir/ValueSet/adverse-event-actuality
 */
public enum AdverseEventActuality: String, FHIRPrimitiveType {
	
	/// The adverse event actually happened regardless of whether anyone was affected or harmed.
	case actual = "actual"
	
	/// A potential adverse event.
	case potential = "potential"
}
