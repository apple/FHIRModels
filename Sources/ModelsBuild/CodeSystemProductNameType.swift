//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 6.0.0-ballot2
//  Copyright 2024 Apple Inc.
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
 Type of a name for a Medicinal Product.
 
 URL: http://hl7.org/fhir/medicinal-product-name-type
 ValueSet: http://hl7.org/fhir/ValueSet/medicinal-product-name-type
 */
public enum ProductNameType: String, FHIRPrimitiveType {
	
	/// BAN
	case BAN
	
	/// INN
	case INN
	
	/// INNM
	case INNM
	
	/// PINN
	case PINN = "pINN"
	
	/// RINN
	case RINN = "rINN"
}
