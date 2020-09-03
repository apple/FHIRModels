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
 Indicates the progression of a study subject through a study.
 
 URL: http://terminology.hl7.org/CodeSystem/research-subject-state
 ValueSet: http://hl7.org/fhir/ValueSet/research-subject-state
 */
public enum ResearchSubjectState: String, FHIRPrimitiveType {
	
	/// An identified person that can be considered for inclusion in a study.
	case candidate = "candidate"
	
	/// A person that has met the eligibility criteria for inclusion in a study.
	case eligible = "eligible"
	
	/// A person is no longer receiving study intervention and/or being evaluated with tests and procedures according to
	/// the protocol, but they are being monitored on a protocol-prescribed schedule.
	case followUp = "follow-up"
	
	/// A person who did not meet one or more criteria required for participation in a study is considered to have
	/// failed screening or
	/// is ineligible for the study.
	case ineligible = "ineligible"
	
	/// A person for whom registration was not completed.
	case notRegistered = "not-registered"
	
	/// A person that has ended their participation on a study either because their treatment/observation is complete or
	/// through not
	/// responding, withdrawal, non-compliance and/or adverse event.
	case offStudy = "off-study"
	
	/// A person that is enrolled or registered on a study.
	case onStudy = "on-study"
	
	/// The person is receiving the treatment or participating in an activity (e.g. yoga, diet, etc.) that the study is
	/// evaluating.
	case onStudyIntervention = "on-study-intervention"
	
	/// The subject is being evaluated via tests and assessments according to the study calendar, but is not receiving
	/// any intervention. Note that this state is study-dependent and might not exist in all studies.  A synonym for
	/// this is "short-term follow-up".
	case onStudyObservation = "on-study-observation"
	
	/// A person is pre-registered for a study.
	case pendingOnStudy = "pending-on-study"
	
	/// A person that is potentially eligible for participation in the study.
	case potentialCandidate = "potential-candidate"
	
	/// A person who is being evaluated for eligibility for a study.
	case screening = "screening"
	
	/// The person has withdrawn their participation in the study before registration.
	case withdrawn = "withdrawn"
}
