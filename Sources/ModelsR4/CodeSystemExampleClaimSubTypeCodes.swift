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
 This value set includes sample Claim SubType codes which are used to distinguish the claim types for example within
 type institutional there may be subtypes for emergency services, bed stay and transportation.
 
 URL: http://terminology.hl7.org/CodeSystem/ex-claimsubtype
 ValueSet: http://hl7.org/fhir/ValueSet/claim-subtype
 */
public enum ExampleClaimSubTypeCodes: String, FHIRPrimitiveType {
	
	/// A claim for Orthodontic Services.
	case ortho = "ortho"
	
	/// A claim for emergency services.
	case emergency = "emergency"
}
