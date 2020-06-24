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
 Value Set for Flag Category (Example). This value set defines category codes for Patient Record Flags. Patient record
 flags is a mechanism in which an alert can be assigned to patients who have certain high risk clinical needs or
 behavior problems. Flags can be configured to appear during the patient look-up process.
 
 URL: http://hl7.org/fhir/flagCategory
 ValueSet: http://hl7.org/fhir/ValueSet/qicore-flag-category
 */
public enum FlagCategoryCodes: String, FHIRPrimitiveType {
	
	/// Patient has special needs, limitations, or preferences that impact clinical treatment.
	case CL = "CL"
	
	/// Patient actions that pose risk or otherwise impact health or treatement, e.g. verbal threats, possession of
	/// weapons in a health care facility, acts of violence, history of suicidal behavior, drug-seeking behavior, or
	/// sexual harrassment.
	case BH = "BH"
	
	/// Patient is a participant in a research study.
	case RES = "RES"
	
	/// Special circumstances in terms of transportation, living situation, or communications.
	case SC = "SC"
	
	/// Special issues with respect to payment, insurance, or other administrative matters.
	case ADM = "ADM"
	
	/// Patient has advance directives.
	case ADV = "ADV"
	
	/// Flag or alert not belonging to any other category.
	case OT = "OT"
}
