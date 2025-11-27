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
 A knowledge representation level, narrative, semi-structured, structured, and executable
 
 URL: http://hl7.org/fhir/CodeSystem/knowledge-representation-level
 ValueSet: http://hl7.org/fhir/uv/cpg/ValueSet/knowledge-representation-level
 */
public enum KnowledgeRepresentationLevel: String, FHIRPrimitiveType {
	
	/// The knowledge is expressed in a way that is coded and interpretable by CDS systems using a variety of formats,
	/// affording direct executability, but potentially limited shareability. The knowledge is typically expressed
	/// focusing on a specific delivery method (modality), technology platform, and implementation environment.
	/// Knowledge at this level is typically built and developed by implementers working in specific technology
	/// platforms, for the purpose of implementation at a specific site, though affordances such as computable mappings
	/// and configuration capabilities can broaden the usability of the knowledge artifact.
	case executable
	
	/// The knowledge is expressed as narrative text, affording broad shareability, but limited computability. The
	/// knowledge is typically expressed independent of delivery method (modality), technology platform, and
	/// implementation site. Knowledge at this level is typically authored by guideline developers for a broad range of
	/// purposes including communication of policy, synthesis of evidence, and dissemination of best-practices.
	case narrative
	
	/// The knowledge is expressed as organized text, often accompanied by diagrams such as flow charts and decision
	/// tables, affording broad shareability and moderate computability. The knowledge is typically expressed
	/// independent of delivery method (modality), technology platform, and implementation site. Knowledge at this level
	/// is typically authored by clinical domain experts for the purpose of communication the description of
	/// recommendations for implementation in various modalities.
	case semiStructured = "semi-structured"
	
	/// The knowledge is expressed in a structured way that is interpretable by computer, including being coded using
	/// standard terminologies and specifications for the representation of structured content, affording broad
	/// shareability and high computability. The knowledge is typically expressed independent of delivery method
	/// (modality), technology platform, and implementation site. Knowledge at this level is typically authored by
	/// knowledge engineersto enable precise communication and validation of the recommendations.
	case structured
}
