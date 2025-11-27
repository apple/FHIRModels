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
 SubstanceWeightMethod
 
 URL: http://hl7.org/fhir/substance-weight-method
 ValueSet: http://hl7.org/fhir/ValueSet/substance-weight-method
 */
public enum SubstanceWeightMethod: String, FHIRPrimitiveType {
	
	/// SDSPAGE
	case SDSPAGE = "SDS-PAGE"
	
	/// calculated
	case calculated = "Calculated"
	
	/// endGroupAnalysis
	case endGroupAnalysis = "End-groupAnalysis"
	
	/// endGroupTitration
	case endGroupTitration = "End-groupTitration"
	
	/// gelPermeationCentrifugation
	case gelPermeationCentrifugation = "GelPermeationCentrifugation"
	
	/// lighScattering
	case lighScattering = "LighScattering"
	
	/// sizeExclusionChromatography
	case sizeExclusionChromatography = "Size-ExclusionChromatography"
	
	/// viscosity
	case viscosity = "Viscosity"
}
