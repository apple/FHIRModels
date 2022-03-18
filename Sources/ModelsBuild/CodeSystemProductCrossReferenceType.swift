//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.6.0-048af26
//  Copyright 2022 Apple Inc.
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
 Relationship to another Medicinal Product.
 
 URL: http://hl7.org/fhir/medicinal-product-cross-reference-type
 ValueSet: http://hl7.org/fhir/ValueSet/medicinal-product-cross-reference-type
 */
public enum ProductCrossReferenceType: String, FHIRPrimitiveType {
	
	/// Link Virtual to Actual Product
	case actualProduct = "ActualProduct"
	
	/// Link Generic to Branded Product
	case brandedProduct = "BrandedProduct"
	
	/// Link Branded to Generic Product
	case genericProduct = "GenericProduct"
	
	/// Link to Investigational (Development) Product
	case investigationalProduct = "InvestigationalProduct"
	
	/// Link to Parallel Import Product
	case parallel = "Parallel"
	
	/// Link Actual to Virtual Product
	case virtualProduct = "VirtualProduct"
}
