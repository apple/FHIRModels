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
 MedicationKnowledge Characteristic Codes
 
 URL: http://terminology.hl7.org/CodeSystem/medicationknowledge-characteristic
 ValueSet: http://hl7.org/fhir/ValueSet/medicationknowledge-characteristic
 */
public enum MedicationKnowledgeCharacteristicCodes: String, FHIRPrimitiveType {
	
	/// Identyifying marks on product
	case imprintcd = "imprintcd"
	
	/// Description of size of the product
	case size = "size"
	
	/// Description of the shape of the product
	case shape = "shape"
	
	/// Description of the color of the product
	case color = "color"
	
	/// Description of the coating of the product
	case coating = "coating"
	
	/// Description of the scoring of the product
	case scoring = "scoring"
	
	/// Description of the Logo of the product
	case logo = "logo"
}
