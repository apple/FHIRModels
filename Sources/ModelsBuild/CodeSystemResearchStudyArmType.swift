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
 Codes for the main intent of the study.
 
 URL: http://hl7.org/fhir/research-study-arm-type
 ValueSet: http://hl7.org/fhir/ValueSet/research-study-arm-type
 */
public enum ResearchStudyArmType: String, FHIRPrimitiveType {
	
	/// activeComparator
	case activeComparator = "active-comparator"
	
	/// experimental
	case experimental
	
	/// noIntervention
	case noIntervention = "no-intervention"
	
	/// otherArmType
	case otherArmType = "other-arm-type"
	
	/// placeboComparator
	case placeboComparator = "placebo-comparator"
	
	/// shamComparator
	case shamComparator = "sham-comparator"
}
