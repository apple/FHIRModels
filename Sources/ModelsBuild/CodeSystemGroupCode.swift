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
 A code that describes the use of the group. The use of the group usually dictates what kind of entities can be members
 of the group.
 
 URL: http://hl7.org/fhir/group-code
 ValueSet: http://hl7.org/fhir/ValueSet/group-code
 */
public enum GroupCode: String, FHIRPrimitiveType {
	
	/// A collection of entities for an arbitrary reason.
	case collection
	
	/// Group contains a set of persons and/or animals who were at the same place at the same time. This is typically
	/// used for an infection event
	case eventAttendee = "event-attendee"
	
	/// Group contains a set of persons and/or animals who were exposed to some antigen or infectious agent.
	case exposureGroup = "exposure-group"
	
	/// A group of persons and/or animals that constitute a family. The definition of family is not precisely fixed and
	/// subject to much variableness in interpretation.
	case family
	
	/// Group contains a set of animals that are treated as a coherent group.
	case herd
	
	/// A group of persons and/or animals that reside in a singe house. Both the definitions of 'reside' and 'house' are
	/// not precisely fixed.
	case household
	
	/// Group contains HealthcareService resources that are found in a single geographical location.
	case locality
	
	/// A collection of healthcare services.
	case organization
	
	/// A list of patients for the purpose of some kind of clinical treatment.
	case patientList = "patient-list"
	
	/// A group of persons who work together in a single place.
	case workplace
}
