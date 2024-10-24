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
 The type of relationship to the cited artifact.
 
 URL: http://hl7.org/fhir/related-artifact-type-expanded
 ValueSet: http://hl7.org/fhir/ValueSet/related-artifact-type-expanded
 */
public enum RelatedArtifactTypeExpanded: String, FHIRPrimitiveType {
	
	/// A copy of the artifact in a publication with a different artifact identifier.
	case reprint
	
	/// The original version of record for which the current artifact is a copy.
	case reprintOf = "reprint-of"
}
