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
 Codes for the assessment of whether the entity caused the event.
 
 URL: http://terminology.hl7.org/CodeSystem/adverse-event-causality-assess
 ValueSet: http://hl7.org/fhir/ValueSet/adverse-event-causality-assess
 */
public enum AdverseEventCausalityAssessment: String, FHIRPrimitiveType {
	
	/// i) Event or laboratory test abnormality, with plausible time relationship to drug intake; ii) Cannot be
	/// explained by disease or other drugs; iii) Response to withdrawal plausible (pharmacologically, pathologically);
	/// iv) Event definitive pharmacologically or phenomenologically (i.e. an objective and specific medical disorder or
	/// a recognized pharmacological phenomenon); or v) Re-challenge satisfactory, if necessary.
	case certain = "certain"
	
	/// i) Event or laboratory test abnormality, with reasonable time relationship to drug intake; ii) Unlikely to be
	/// attributed to disease or other drugs; iii) Response to withdrawal clinically reasonable; or iv) Re-challenge not
	/// required.
	case probablyLikely = "probably-likely"
	
	/// i) Event or laboratory test abnormality, with reasonable time relationship to drug intake; ii) Could also be
	/// explained by disease or other drugs; or iii) Information on drug withdrawal may be lacking or unclear.
	case possible = "possible"
	
	/// i) Event or laboratory test abnormality, with a time to drug intake that makes a relationship improbable (but
	/// not impossible); or ii) Disease or other drugs provide plausible explanations.
	case unlikely = "unlikely"
	
	/// i) Event or laboratory test abnormality; ii) More data for proper assessment needed; or iii) Additional data
	/// under examination.
	case conditionalClassified = "conditional-classified"
	
	/// i) Report suggesting an adverse reaction; ii) Cannot be judged because information is insufficient or
	/// contradictory; or iii) Data cannot be supplemented or verified.
	case unassessableUnclassifiable = "unassessable-unclassifiable"
}
