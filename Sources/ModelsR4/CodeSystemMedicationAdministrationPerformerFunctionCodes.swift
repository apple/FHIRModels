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
 MedicationAdministration Performer Function Codes
 
 URL: http://terminology.hl7.org/CodeSystem/med-admin-perform-function
 ValueSet: http://hl7.org/fhir/ValueSet/med-admin-perform-function
 */
public enum MedicationAdministrationPerformerFunctionCodes: String, FHIRPrimitiveType {
	
	/// A person, non-person living subject, organization or device that who actually and principally carries out the
	/// action
	case performer = "performer"
	
	/// A person who verifies the correctness and appropriateness of the service (plan, order, event, etc.) and hence
	/// takes on accountability.
	case verifier = "verifier"
	
	/// A person witnessing the action happening without doing anything. A witness is not necessarily aware, much less
	/// approves of anything stated in the service event. Example for a witness is students watching an operation or an
	/// advanced directive witness.
	case witness = "witness"
}
