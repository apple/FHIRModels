//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.6.0-048af26
//  Copyright 2022 Apple Inc.
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
 A capability afforded by a knowledge artifact, e.g. shareable, computable, publishable, executable
 
 URL: http://hl7.org/fhir/CodeSystem/knowledge-capability
 ValueSet: http://hl7.org/fhir/ValueSet/knowledge-capability
 */
public enum KnowledgeCapability: String, FHIRPrimitiveType {
	
	/// The artifact provides at least machine-readable capability (i.e. it does not _only_ have narrative or
	/// unstructured elements). This capability can also be characterized as the artifact provides design-time
	/// capability, for example, an artifact is computable if it contains semantically verified CQL logic.
	case computable
	
	/// The artifact is guaranteed to have the elements required to support execution of at least one run-time operation
	/// appropriate for the type of artifact. This capability can also be characterized as the artifact provides run-
	/// time capability, for example, an artifact is executable if it contains compiled ELM logic.
	case executable
	
	/// The artifact provides information necessary to provide content management capability, including dependency
	/// management, artifact lifecycle, and publishing and repository metadata.
	case publishable
	
	/// The artifact provides essential information necessary to ensure shareability of the content as a FHIR resource.
	case shareable
}
