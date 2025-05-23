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
 A categorisation for a frequency of occurence of an undesirable effect.
 
 URL: http://hl7.org/fhir/undesirable-effect-frequency
 ValueSet: http://hl7.org/fhir/ValueSet/undesirable-effect-frequency
 */
public enum UndesirablEffectFrequency: String, FHIRPrimitiveType {
	
	/// common
	case common = "Common"
	
	/// rare
	case rare = "Rare"
	
	/// uncommon
	case uncommon = "Uncommon"
}
