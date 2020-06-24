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
 Substance category codes
 
 URL: http://terminology.hl7.org/CodeSystem/substance-category
 ValueSet: http://hl7.org/fhir/ValueSet/substance-category
 */
public enum SubstanceCategoryCodes: String, FHIRPrimitiveType {
	
	/// A substance that causes an allergic reaction.
	case allergen = "allergen"
	
	/// A substance that is produced by or extracted from a biological source.
	case biological = "biological"
	
	/// A substance that comes directly from a human or an animal (e.g. blood, urine, feces, tears, etc.).
	case body = "body"
	
	/// Any organic or inorganic substance of a particular molecular identity, including -- (i) any combination of such
	/// substances occurring in whole or in part as a result of a chemical reaction or occurring in nature and (ii) any
	/// element or uncombined radical (http://www.epa.gov/opptintr/import-export/pubs/importguide.pdf).
	case chemical = "chemical"
	
	/// A food, dietary ingredient, or dietary supplement for human or animal.
	case food = "food"
	
	/// A substance intended for use in the diagnosis, cure, mitigation, treatment, or prevention of disease in man or
	/// other animals (Federal Food Drug and Cosmetic Act).
	case drug = "drug"
	
	/// A finished product which is not normally ingested, absorbed or injected (e.g. steel, iron, wood, plastic and
	/// paper).
	case material = "material"
}
