//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.3.0
//  Copyright 2023 Apple Inc.
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
 
 URL: http://terminology.hl7.org/CodeSystem/title-type
 ValueSet: http://hl7.org/fhir/ValueSet/title-type
 */
public enum TitleType: String, FHIRPrimitiveType {
	
	/// Abbreviation used as title
	case acronym
	
	/// Machine translated form of title in a different language, language element codes the language into which it was
	/// translated by machine.
	case autotranslated
	
	/// An alternative form of the title in two or more entries, e.g. in multiple medline entries
	case duplicateUid = "duplicate-uid"
	
	/// Alternative form of title in an earlier version such as epub ahead of print.
	case earlierTitle = "earlier-title"
	
	/// Human-friendly title
	case humanUse = "human-use"
	
	/// Additional form of title in a different language.
	case language
	
	/// Machine-friendly title
	case machineUse = "machine-use"
	
	/// The official or authoritative title.
	case official
	
	/// Title using language common to lay public discourse.
	case plainLanguage = "plain-language"
	
	/// Main title for common use. The primary title used for representation if multiple titles exist.
	case primary
	
	/// Title using scientific terminology.
	case scientific
	
	/// Brief title (e.g. 'running title' or title used in page headers)
	case shortTitle = "short-title"
	
	/// Subtitle or secondary title.
	case subtitle
}
