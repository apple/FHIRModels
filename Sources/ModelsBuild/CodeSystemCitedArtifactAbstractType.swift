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
 Used to express the reason and specific aspect for the variant abstract, such as language and specific language
 
 URL: http://hl7.org/fhir/cited-artifact-abstract-type
 ValueSet: http://hl7.org/fhir/ValueSet/cited-artifact-abstract-type
 */
public enum CitedArtifactAbstractType: String, FHIRPrimitiveType {
	
	/// Machine translated form of abstract in a different language, language element codes the language into which it
	/// was translated by machine
	case autotranslated
	
	/// Abstract produced by a different publisher than the cited artifact
	case differentPublisher = "different-publisher"
	
	/// Alternative form of abstract in two or more Medline entries
	case duplicatePmid = "duplicate-pmid"
	
	/// Alternative form of abstract in an earlier version such as epub ahead of print
	case earlierAbstract = "earlier-abstract"
	
	/// Additional form of abstract in a different language
	case language
	
	/// Long version of the abstract, for use when abstracts are provided in different sizes or lengths
	case longAbstract = "long-abstract"
	
	/// Additional form of abstract written for the general public
	case plainLanguage = "plain-language"
	
	/// Human-friendly main or official abstract
	case primaryHumanUse = "primary-human-use"
	
	/// Machine-friendly main or official abstract
	case primaryMachineUse = "primary-machine-use"
	
	/// Brief abstract, for use when abstracts are provided in different sizes or lengths
	case shortAbstract = "short-abstract"
	
	/// Truncated abstract
	case truncated
}
