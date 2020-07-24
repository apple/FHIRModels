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
 A code that specifies a type of context being specified by a usage context
 
 URL: http://hl7.org/fhir/usage-context-type
 ValueSet: http://hl7.org/fhir/ValueSet/usage-context-type
 */
public enum UsageContextType: String, FHIRPrimitiveType {
	
	/// The gender of the patient. For this context type, the value should be a code taken from the
	/// http://hl7.org/fhir/ValueSet/administrative-gender value set
	case gender = "gender"
	
	/// The age of the patient. For this context type, the value should be a range the specifies the applicable ages or
	/// a code from the MeSH value set http://hl7.org/fhir/ValueSet/v3-AgeGroupObservationValue
	case age = "age"
	
	/// The clinical concept(s) addressed by the artifact. For example, disease, diagnostic test interpretation,
	/// medication ordering as in http://hl7.org/fhir/ValueSet/condition-code.
	case focus = "focus"
	
	/// The clinical specialty of the context in which the patient is being treated - For example, PCP, Patient,
	/// Cardiologist, Behavioral Professional, Oral Health Professional, Prescriber, etc... taken from the NUCC Health
	/// Care provider taxonomy value set http://hl7.org/fhir/ValueSet/provider-taxonomy.
	case user = "user"
	
	/// The settings in which the artifact is intended for use. For example, admission, pre-op, etc. For example, the
	/// ActEncounterCode value set http://hl7.org/fhir/ValueSet/v3-ActEncounterCode
	case workflow = "workflow"
	
	/// The context for the clinical task(s) represented by this artifact. Can be any task context represented by the
	/// HL7 ActTaskCode value set http://hl7.org/fhir/ValueSet/v3-ActTaskCode. General categories include: order entry,
	/// patient documentation and patient information review.
	case task = "task"
	
	/// The venue in which an artifact could be used. For example, Outpatient, Inpatient, Home, Nursing home. The code
	/// value may originate from either the HL7 ActEncounterCode http://hl7.org/fhir/ValueSet/v3-ActEncounterCode or
	/// NUCC non-individual provider codes http://hl7.org/fhir/ValueSet/provider-taxonomy
	case venue = "venue"
	
	/// The species to which an artifact applies. For example, SNOMED - 387961004 | Kingdom Animalia (organism).
	case species = "species"
}
