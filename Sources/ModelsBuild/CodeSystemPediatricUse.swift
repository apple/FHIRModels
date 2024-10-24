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
 Suitability for age groups, in particular children.
 
 URL: http://hl7.org/fhir/medicinal-product-pediatric-use
 ValueSet: http://hl7.org/fhir/ValueSet/medicinal-product-pediatric-use
 */
public enum PediatricUse: String, FHIRPrimitiveType {
	
	/// Adolescents (12 to < 18 years)
	case adolescents = "Adolescents"
	
	/// Adults (18 to < 65 years)
	case adults = "Adults"
	
	/// Adult and elderly population (> 18 years)
	case adultsAndElderly = "AdultsAndElderly"
	
	/// All
	case all = "All"
	
	/// Children (2 to < 12 years)
	case children = "Children"
	
	/// Elderly (≥ 65 years)
	case elderly = "Elderly"
	
	/// In utero
	case inUtero = "InUtero"
	
	/// Infants and toddlers (28 days – 23 months)
	case infants = "Infants"
	
	/// Neonate
	case neonate = "Neonate"
	
	/// Pediatric Population (< 18 years)
	case pediatricPopulation = "PediatricPopulation"
	
	/// Prepubertal children (2 years to onset of puberty)
	case prepubertal = "Prepubertal"
	
	/// Preterm newborn infants (0 – 27 days)
	case pretermNewborn = "PretermNewborn"
	
	/// Pubertal and postpubertal adolescents (onset of puberty to < 18 years)
	case pubertalAndPostpubertal = "PubertalAndPostpubertal"
	
	/// Term newborn infants (0 – 27 days)
	case termNewborn = "TermNewborn"
}
