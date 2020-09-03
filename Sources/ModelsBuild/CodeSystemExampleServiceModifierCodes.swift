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
 This value set includes sample Service Modifier codes which may support differential payment.
 
 URL: http://hl7.org/fhir/ex-servicemodifier
 ValueSet: http://hl7.org/fhir/ValueSet/service-modifiers
 */
public enum ExampleServiceModifierCodes: String, FHIRPrimitiveType {
	
	/// Services provided on the side of the road or such other non-conventional setting.
	case sr = "sr"
	
	/// Services provided outside or normal business hours.
	case ah = "ah"
}
