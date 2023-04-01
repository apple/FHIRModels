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
 This codesystem defines a set of codes that can be used to indicate from where the patient came in.
 
 URL: http://terminology.hl7.org/CodeSystem/admit-source
 */
public enum AdmitSource: String, FHIRPrimitiveType {
	
	/// The patient is a newborn and the encounter will track the baby related activities (as opposed to the Mothers
	/// encounter - that may be associated using the newborn encounters partof property)
	case born
	
	/// The patient has been transferred from the emergency department within the hospital. This is typically used in
	/// the transition to an inpatient encounter
	case emd
	
	/// The patient has been admitted due to a referred from a General Practitioner.
	case gp
	
	/// The Patient has been transferred from another hospital for this encounter.
	case hospTrans = "hosp-trans"
	
	/// The patient has been admitted due to a referred from a Specialist (as opposed to a General Practitioner).
	case mp
	
	/// The patient has been transferred from a nursing home.
	case nursing
	
	/// The patient has been admitted from a source otherwise not specified here.
	case other
	
	/// The patient has been transferred from an outpatient department within the hospital.
	case outp
	
	/// The patient has been transferred from a psychiatric facility.
	case psych
	
	/// The patient has been transferred from a rehabilitation facility or clinic.
	case rehab
}
