//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.0.1-9346c8cc45
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
 The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of
 or contains concepts to support describing the source of the vaccine administered. This value set is provided as a
 suggestive example.
 
 URL: http://terminology.hl7.org/CodeSystem/immunization-funding-source
 ValueSet: http://hl7.org/fhir/ValueSet/immunization-funding-source
 */
public enum ImmunizationFundingSource: String, FHIRPrimitiveType {
	
	/// The vaccine was purchased with private funds.
	case `private` = "private"
	
	/// The vaccine was purchased with public funds.
	case `public` = "public"
}
