//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 1.0.2.7202
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
 This value set defines a set of codes that can be used to indicate from where the patient came in.
 
 URL: http://hl7.org/fhir/admit-source
 ValueSet: http://hl7.org/fhir/ValueSet/encounter-admit-source
 */
public enum AdmitSource: String, FHIRPrimitiveType {
	
	/// hospTrans
	case hospTrans = "hosp-trans"
	
	/// emd
	case emd = "emd"
	
	/// outp
	case outp = "outp"
	
	/// born
	case born = "born"
	
	/// gp
	case gp = "gp"
	
	/// mp
	case mp = "mp"
	
	/// nursing
	case nursing = "nursing"
	
	/// psych
	case psych = "psych"
	
	/// rehab
	case rehab = "rehab"
	
	/// other
	case other = "other"
}
