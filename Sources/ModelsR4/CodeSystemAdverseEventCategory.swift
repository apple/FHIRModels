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
 Overall categorization of the event, e.g. product-related or situational.
 
 URL: http://terminology.hl7.org/CodeSystem/adverse-event-category
 ValueSet: http://hl7.org/fhir/ValueSet/adverse-event-category
 */
public enum AdverseEventCategory: String, FHIRPrimitiveType {
	
	/// The adverse event pertains to a product problem.
	case productProblem = "product-problem"
	
	/// The adverse event pertains to product quality.
	case productQuality = "product-quality"
	
	/// The adverse event pertains to a product use error.
	case productUseError = "product-use-error"
	
	/// The adverse event pertains to a wrong dose.
	case wrongDose = "wrong-dose"
	
	/// The adverse event pertains to incorrect perscribing information.
	case incorrectPrescribingInformation = "incorrect-prescribing-information"
	
	/// The adverse event pertains to a wrong technique.
	case wrongTechnique = "wrong-technique"
	
	/// The adverse event pertains to a wrong route of administration.
	case wrongRouteOfAdministration = "wrong-route-of-administration"
	
	/// The adverse event pertains to a wrong rate.
	case wrongRate = "wrong-rate"
	
	/// The adverse event pertains to a wrong duration.
	case wrongDuration = "wrong-duration"
	
	/// The adverse event pertains to a wrong time.
	case wrongTime = "wrong-time"
	
	/// The adverse event pertains to an expired drug.
	case expiredDrug = "expired-drug"
	
	/// The adverse event pertains to a medical device use error.
	case medicalDeviceUseError = "medical-device-use-error"
	
	/// The adverse event pertains to a problem with a different manufacturer of the same medication.
	case problemDifferentManufacturer = "problem-different-manufacturer"
	
	/// The adverse event pertains to an unsafe physical environment.
	case unsafePhysicalEnvironment = "unsafe-physical-environment"
}
