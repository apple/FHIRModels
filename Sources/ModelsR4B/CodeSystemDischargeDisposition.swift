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
 This codesystem defines a set of codes that can be used to where the patient left the hospital.
 
 URL: http://terminology.hl7.org/CodeSystem/discharge-disposition
 */
public enum DischargeDisposition: String, FHIRPrimitiveType {
	
	/// The patient self discharged against medical advice.
	case aadvice
	
	/// The patient was discharged and has indicated that they are going to return home afterwards, but not the
	/// patient's home - e.g. a family member's home.
	case altHome = "alt-home"
	
	/// The patient has deceased during this encounter.
	case exp
	
	/// The patient was dicharged and has indicated that they are going to return home afterwards.
	case home
	
	/// The patient has been discharged into palliative care.
	case hosp
	
	/// The patient has been discharged into long-term care where is likely to be monitored through an ongoing episode-
	/// of-care.
	case long
	
	/// The discharge disposition has not otherwise defined.
	case oth
	
	/// The patient was transferred to another healthcare facility.
	case otherHcf = "other-hcf"
	
	/// The patient has been transferred to a psychiatric facility.
	case psy
	
	/// The patient was discharged and is to receive post acute care rehabilitation services.
	case rehab
	
	/// The patient has been discharged to a skilled nursing facility for the patient to receive additional care.
	case snf
}
