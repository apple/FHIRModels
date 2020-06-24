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
 This value set defines a set of codes that are used to indicate the profile type of a test system when acting as the
 origin within a TestScript.
 
 URL: http://terminology.hl7.org/CodeSystem/testscript-profile-origin-types
 ValueSet: http://hl7.org/fhir/ValueSet/testscript-profile-origin-types
 */
public enum TestScriptProfileOriginType: String, FHIRPrimitiveType {
	
	/// General FHIR client used to initiate operations against a FHIR server.
	case fHIRClient = "FHIR-Client"
	
	/// A FHIR client acting as a Structured Data Capture Form Filler.
	case fHIRSDCFormFiller = "FHIR-SDC-FormFiller"
}
