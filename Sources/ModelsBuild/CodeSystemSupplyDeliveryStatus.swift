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
 Status of the supply delivery.
 
 URL: http://hl7.org/fhir/supplydelivery-status
 ValueSet: http://hl7.org/fhir/ValueSet/supplydelivery-status
 */
public enum SupplyDeliveryStatus: String, FHIRPrimitiveType {
	
	/// Supply has been requested, but not delivered.
	case inProgress = "in-progress"
	
	/// Supply has been delivered ("completed").
	case completed = "completed"
	
	/// Delivery was not completed.
	case abandoned = "abandoned"
	
	/// This electronic record should never have existed, though it is possible that real-world decisions were based on
	/// it. (If real-world activity has occurred, the status should be "abandoned" rather than "entered-in-error".).
	case enteredInError = "entered-in-error"
}
