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
 The type of relationship to the related artifact.
 
 URL: http://hl7.org/fhir/related-artifact-type
 ValueSet: http://hl7.org/fhir/ValueSet/related-artifact-type
 */
public enum RelatedArtifactType: String, FHIRPrimitiveType {
	
	/// Bibliographic citation for papers, references, or other relevant material for the knowledge resource. This is
	/// intended to allow for citation of related material, but that was not necessarily specifically prepared in
	/// connection with this knowledge resource.
	case citation
	
	/// This artifact is composed of the target artifact. This artifact is constructed with the target artifact as a
	/// component. The target artifact is a part of this artifact. (A dataset is composed of data.).
	case composedOf = "composed-of"
	
	/// This artifact depends on the target artifact. There is a requirement to use the target artifact in the creation
	/// or interpretation of this artifact.
	case dependsOn = "depends-on"
	
	/// This artifact is derived from the target artifact. This is intended to capture the relationship in which a
	/// particular knowledge resource is based on the content of another artifact, but is modified to capture either a
	/// different set of overall requirements, or a more specific set of requirements such as those involved in a
	/// particular institution or clinical setting. The artifact may be derived from one or more target artifacts.
	case derivedFrom = "derived-from"
	
	/// Additional documentation for the knowledge resource. This would include additional instructions on usage as well
	/// as additional information on clinical context or appropriateness.
	case documentation
	
	/// The target artifact is a summary of the justification for the knowledge resource including supporting evidence,
	/// relevant guidelines, or other clinically important information. This information is intended to provide a way to
	/// make the justification for the knowledge resource available to the consumer of interventions or results produced
	/// by the knowledge resource.
	case justification
	
	/// This artifact is a part of the target artifact. The target artifact is composed of this artifact (and possibly
	/// other artifacts).
	case partOf = "part-of"
	
	/// The previous version of the knowledge artifact, used to establish an ordering of versions of an artifact,
	/// independent of the status of each version.
	case predecessor
	
	/// The subsequent version of the knowledge artfact, used to establish an ordering of versions of an artifact,
	/// independent of the status of each version.
	case successor
}
