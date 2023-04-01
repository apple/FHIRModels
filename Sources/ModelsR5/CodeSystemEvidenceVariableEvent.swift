//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 5.0.0
//  Copyright 2023 Apple Inc.
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
 The event used as a base point (reference point) in time.
 
 URL: http://hl7.org/fhir/evidence-variable-event
 ValueSet: http://hl7.org/fhir/ValueSet/evidence-variable-event
 */
public enum EvidenceVariableEvent: String, FHIRPrimitiveType {
	
	/// The time of first detection of the condition
	case conditionDetection = "condition-detection"
	
	/// The time of first treatment of the condition
	case conditionTreatment = "condition-treatment"
	
	/// The time of admission to the hospital
	case hospitalAdmission = "hospital-admission"
	
	/// The time of discharge from the hospital
	case hospitalDischarge = "hospital-discharge"
	
	/// The time of surgery
	case operativeProcedure = "operative-procedure"
	
	/// The time of enrollment for the study participant
	case studyStart = "study-start"
	
	/// The time of initiation of the treatment
	case treatmentStart = "treatment-start"
}
