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
 Indicates the type of care team.
 
 URL: http://hl7.org/fhir/care-team-category
 ValueSet: http://hl7.org/fhir/ValueSet/care-team-category
 */
public enum CareTeamCategory: String, FHIRPrimitiveType {
	
	/// This type of team focuses on one specific type of incident, which is non-patient specific. The incident is
	/// determined by the context of use.  For example, code team (code red, code blue, medical emergency treatment) or
	/// the PICC line team.
	case event = "event"
	
	/// This type of team focuses on one specific encounter. The encounter is determined by the context of use.  For
	/// example, during an inpatient encounter, the nutrition support care team
	case encounter = "encounter"
	
	/// This type of team focuses on one specific episode of care with a defined time period or self-limiting process
	/// (e.g. 10 visits). The episode of care is determined by the context of use.  For example, a maternity care team
	/// over 9 months.
	case episode = "episode"
	
	/// This type of team focuses on overall care coordination managing one or more conditions across the continuum of
	/// care ensuring there are smooth transitions of care. The members of the team are determined or selected by an
	/// individual or organization. When determined by an organization, the team may be assigned or based on the
	/// person's enrollment in a particular program. For example, disease management team or patient centered medical
	/// home team.
	case longitudinal = "longitudinal"
	
	/// This type of team focuses on one specific condition. The condition is determined by the context of use.  For
	/// example, a disease management team focused on one condition (e.g. diabetes).
	case condition = "condition"
	
	/// This type of team is responsible for establishing, conducting, coordinating and monitoring the outcomes of
	/// clinical trials. The team focuses on research, clinical care and education.
	case clinicalResearch = "clinical-research"
}
