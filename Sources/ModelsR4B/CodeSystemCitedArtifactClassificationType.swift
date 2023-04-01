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
 Cited Artifact Classification Type
 
 URL: http://terminology.hl7.org/CodeSystem/cited-artifact-classification-type
 ValueSet: http://hl7.org/fhir/ValueSet/cited-artifact-classification-type
 */
public enum CitedArtifactClassificationType: String, FHIRPrimitiveType {
	
	/// Chemical
	case chemical
	
	/// Citation subset
	case citationSubset = "citation-subset"
	
	/// The spatial or temporal topic of the resource, spatial applicability of the resource, or jurisdiction under
	/// which the resource is relevant
	case coverage
	
	/// Keyword
	case keyword
	
	/// Knowledge Artifact Type
	case knowledgeArtifactType = "knowledge-artifact-type"
	
	/// MeSH heading
	case meshHeading = "mesh-heading"
	
	/// Publication type
	case publicationType = "publication-type"
	
	/// Used for PubModel attribute in Medline
	case publishingModel = "publishing-model"
	
	/// Supplemental MeSH for Disease
	case supplementalMeshDisease = "supplemental-mesh-disease"
	
	/// Supplemental MeSH for Organism
	case supplementalMeshOrganism = "supplemental-mesh-organism"
	
	/// Supplemental MeSH for Protocol
	case supplementalMeshProtocol = "supplemental-mesh-protocol"
}
