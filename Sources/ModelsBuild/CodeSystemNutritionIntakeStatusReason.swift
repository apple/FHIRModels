//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 6.0.0-ballot3
//  Copyright 2025 Apple Inc.
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
 Nutrition Intake Status Reason Codes
 
 URL: http://hl7.org/fhir/CodeSystem/nutritionintake-status-reason
 */
public enum NutritionIntakeStatusReason: String, FHIRPrimitiveType {
	
	/// The patient/subject is believed to be allergic to a substance that is part of the therapy and the therapy is
	/// being temporarily withdrawn to confirm.
	case allergy
	
	/// Data needed to safely act on the intake which was expected to become available independent of the intake is not
	/// yet available.
	case incompleteData = "incomplete-data"
	
	/// Cannot supply product.
	case productNotAvailable = "product-not-available"
	
	/// Clarification is required before the intake can be acted upon.
	case requestClarification = "request-clarification"
	
	/// Patient/subject is receiving surgery and/or the subject is scheduled to be admitted for surgery in the near
	/// future. The intake will be resumed when the subject has sufficiently recovered from the surgery.
	case scheduledForSurgery = "scheduled-for-surgery"
	
	/// The patient/subject is believed to have an intolerance to a substance that is part of the therapy and the
	/// therapy is being temporarily withdrawn to confirm.
	case suspectedIntolerance = "suspected-intolerance"
	
	/// Fulfiller not able to provide appropriate care associated with fulfilling the intake.
	case unableToProvideCare = "unable-to-provide-care"
}
