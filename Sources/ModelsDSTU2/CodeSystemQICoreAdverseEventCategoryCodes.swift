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
 Value Set for QICore Adverse Event Category (Preferred)
 
 URL: http://hl7.org/fhir/qicore-adverseevent-category
 ValueSet: http://hl7.org/fhir/ValueSet/qicore-adverseevent-category
 */
public enum QICoreAdverseEventCategoryCodes: String, FHIRPrimitiveType {
	
	/// Blood or Blood Product
	case blood = "blood"
	
	/// Device or Medical/Surgical Supply, including Health Information Technology (HIT)
	case device = "device"
	
	/// Fall by patient
	case fall = "fall"
	
	/// Healthcare-related infection
	case infection = "infection"
	
	/// Medication or Other Substance
	case substance = "substance"
	
	/// Perinatal
	case perinatal = "perinatal"
	
	/// Pressure Ulcer
	case ulcer = "ulcer"
	
	/// Surgery or Anesthesia (includes invasive procedures)
	case surgery = "surgery"
	
	/// Venous Thromboembolism
	case embolism = "embolism"
	
	/// Other (please specify)
	case other = "other"
}
