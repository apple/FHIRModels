//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.3.0
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
 Overall seriousness of this event for the patient.
 
 URL: http://terminology.hl7.org/CodeSystem/adverse-event-seriousness
 ValueSet: http://hl7.org/fhir/ValueSet/adverse-event-seriousness
 */
public enum AdverseEventSeriousness: String, FHIRPrimitiveType {
	
	/// Non-serious.
	case nonSerious = "Non-serious"
	
	/// Serious.
	case serious = "Serious"
	
	/// Is a congenital anomaly/birth defect.
	case seriousIsBirthDefect = "SeriousIsBirthDefect"
	
	/// Is Life-threatening.
	case seriousIsLifeThreatening = "SeriousIsLifeThreatening"
	
	/// Requires intervention to prevent permanent impairment or damage (i.e., an important medical event that requires
	/// medical judgement).
	case seriousRequiresPreventImpairment = "SeriousRequiresPreventImpairment"
	
	/// Results in death.
	case seriousResultsInDeath = "SeriousResultsInDeath"
	
	/// Results in persistent or significant disability/incapacity.
	case seriousResultsInDisability = "SeriousResultsInDisability"
	
	/// Requires inpatient hospitalization or causes prolongation of existing hospitalization.
	case seriousResultsInHospitalization = "SeriousResultsInHospitalization"
}
