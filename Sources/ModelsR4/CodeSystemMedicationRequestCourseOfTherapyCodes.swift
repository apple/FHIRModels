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
 MedicationRequest Course of Therapy Codes
 
 URL: http://terminology.hl7.org/CodeSystem/medicationrequest-course-of-therapy
 ValueSet: http://hl7.org/fhir/ValueSet/medicationrequest-course-of-therapy
 */
public enum MedicationRequestCourseOfTherapyCodes: String, FHIRPrimitiveType {
	
	/// A medication which is expected to be continued beyond the present order and which the patient should be assumed
	/// to be taking unless explicitly stopped.
	case continuous = "continuous"
	
	/// A medication which the patient is only expected to consume for the duration of the current order and which is
	/// not expected to be renewed.
	case acute = "acute"
	
	/// A medication which is expected to be used on a part time basis at certain times of the year
	case seasonal = "seasonal"
}
