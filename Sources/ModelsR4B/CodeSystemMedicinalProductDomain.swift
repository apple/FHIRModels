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
 Applicable domain for this product (e.g. human, veterinary).
 
 URL: http://hl7.org/fhir/medicinal-product-domain
 ValueSet: http://hl7.org/fhir/ValueSet/medicinal-product-domain
 */
public enum MedicinalProductDomain: String, FHIRPrimitiveType {
	
	/// Product intended for use with humans
	case human = "Human"
	
	/// Product intended for use with both humans and animals
	case humanAndVeterinary = "HumanAndVeterinary"
	
	/// Product intended for use with animals
	case veterinary = "Veterinary"
}
