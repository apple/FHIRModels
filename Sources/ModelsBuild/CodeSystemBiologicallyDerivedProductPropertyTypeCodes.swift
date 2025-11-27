//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 6.0.0-ballot3
//  Copyright 2025 Apple Inc.
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
 Biologically Derived Product Property Type Code.  This code system http://hl7.org/fhir/biologicallyderived-product-
 property-type-codes is a subset of the codes defined in http://terminology.hl7.org/CodeSystem/ib
 
 URL: http://hl7.org/fhir/biologicallyderived-product-property-type-codes
 ValueSet: http://hl7.org/fhir/ValueSet/biologicallyderived-product-property-type-codes
 */
public enum BiologicallyDerivedProductPropertyTypeCodes: String, FHIRPrimitiveType {
	
	/// See https://www.isbt128.org/uri/ABORhD
	case aborhd
	
	/// See https://www.isbt128.org/uri/CollectionType
	case collectiontype
	
	/// See https://www.isbt128.org/uri/RedCellAntigen
	case redcellantigen
	
	/// See https://www.isbt128.org/uri/SingleEuropeanCode
	case singleeuropeancode
}
