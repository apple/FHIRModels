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
 Structure Definition Use Codes / Keywords
 
 URL: http://terminology.hl7.org/CodeSystem/definition-use
 ValueSet: http://hl7.org/fhir/ValueSet/definition-use
 */
public enum DefinitionUseCodes: String, FHIRPrimitiveType {
	
	/// This structure is defined as part of the base FHIR Specification
	case fhirStructure = "fhir-structure"
	
	/// This structure is intended to be treated like a FHIR resource (e.g. on the FHIR API)
	case customResource = "custom-resource"
	
	/// This structure captures an analysis of a domain
	case dam = "dam"
	
	/// This structure represents and existing structure (e.g. CDA, HL7 v2)
	case wireFormat = "wire-format"
	
	/// This structure captures an analysis of a domain
	case archetype = "archetype"
	
	/// This structure is a template (n.b: 'template' has many meanings)
	case template = "template"
}
