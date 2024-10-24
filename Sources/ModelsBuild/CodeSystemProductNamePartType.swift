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
 Type of part of a name for a Medicinal Product.
 
 URL: http://hl7.org/fhir/medicinal-product-name-part-type
 ValueSet: http://hl7.org/fhir/ValueSet/medicinal-product-name-part-type
 */
public enum ProductNamePartType: String, FHIRPrimitiveType {
	
	/// containerPart
	case containerPart = "ContainerPart"
	
	/// delimiterPart
	case delimiterPart = "DelimiterPart"
	
	/// devicePart
	case devicePart = "DevicePart"
	
	/// doseFormPart
	case doseFormPart = "DoseFormPart"
	
	/// flavorPart
	case flavorPart = "FlavorPart"
	
	/// formulationPart
	case formulationPart = "FormulationPart"
	
	/// fullName
	case fullName = "FullName"
	
	/// intendedUsePart
	case intendedUsePart = "IntendedUsePart"
	
	/// inventedNamePart
	case inventedNamePart = "InventedNamePart"
	
	/// legacyNamePart
	case legacyNamePart = "LegacyNamePart"
	
	/// populationPart
	case populationPart = "PopulationPart"
	
	/// scientificNamePart
	case scientificNamePart = "ScientificNamePart"
	
	/// speciesNamePart
	case speciesNamePart = "SpeciesNamePart"
	
	/// strengthPart
	case strengthPart = "StrengthPart"
	
	/// timeOrPeriodPart
	case timeOrPeriodPart = "TimeOrPeriodPart"
	
	/// trademarkOrCompanyPart
	case trademarkOrCompanyPart = "TrademarkOrCompanyPart"
}
