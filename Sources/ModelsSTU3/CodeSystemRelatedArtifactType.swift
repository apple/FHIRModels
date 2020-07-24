//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 3.0.1.11917
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
 The type of relationship to the related artifact
 
 URL: http://hl7.org/fhir/related-artifact-type
 ValueSet: http://hl7.org/fhir/ValueSet/related-artifact-type
 */
public enum RelatedArtifactType: String, FHIRPrimitiveType {
	
	/// Additional documentation for the knowledge resource. This would include additional instructions on usage as well
	/// as additional information on clinical context or appropriateness
	case documentation = "documentation"
	
	/// A summary of the justification for the knowledge resource including supporting evidence, relevant guidelines, or
	/// other clinically important information. This information is intended to provide a way to make the justification
	/// for the knowledge resource available to the consumer of interventions or results produced by the knowledge
	/// resource
	case justification = "justification"
	
	/// Bibliographic citation for papers, references, or other relevant material for the knowledge resource. This is
	/// intended to allow for citation of related material, but that was not necessarily specifically prepared in
	/// connection with this knowledge resource
	case citation = "citation"
	
	/// The previous version of the knowledge resource
	case predecessor = "predecessor"
	
	/// The next version of the knowledge resource
	case successor = "successor"
	
	/// The knowledge resource is derived from the related artifact. This is intended to capture the relationship in
	/// which a particular knowledge resource is based on the content of another artifact, but is modified to capture
	/// either a different set of overall requirements, or a more specific set of requirements such as those involved in
	/// a particular institution or clinical setting
	case derivedFrom = "derived-from"
	
	/// The knowledge resource depends on the given related artifact
	case dependsOn = "depends-on"
	
	/// The knowledge resource is composed of the given related artifact
	case composedOf = "composed-of"
}
