//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.5.0-a621ed4bdc
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
 Used to express the reason and specific aspect for the variant title, such as language and specific language.
 
 URL: http://terminology.hl7.org/CodeSystem/alternative-title-type
 ValueSet: http://hl7.org/fhir/ValueSet/alternative-title-type
 */
public enum AlternativeTitleType: String, FHIRPrimitiveType {
	
	/// Alternative form of title or abstract is a different language.
	case language = "language"
	
	/// Alternative form of title or abstract is a different language, language element codes the language into which it
	/// was translated by machine.
	case autotranslated = "autotranslated"
	
	/// Alternative form of title or abstract  in two or more Medline entries.
	case duplicatePmid = "duplicatePmid"
	
	/// Alternative form of title or abstract in an earlier version such as epub ahead of print.
	case earlierTitle = "earlierTitle"
	
	/// Subtitle or Secondary title.
	case subtitle = "subtitle"
}
