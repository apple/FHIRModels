//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 5.0.0
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
 Types of resources that are part of group.
 
 URL: http://hl7.org/fhir/group-type
 ValueSet: http://hl7.org/fhir/ValueSet/group-type
 */
public enum GroupType: String, FHIRPrimitiveType {
	
	/// Group contains "animal" Patient resources.
	case animal
	
	/// Group contains CareTeam resources.
	case careteam
	
	/// Group contains Device resources.
	case device
	
	/// Group contains HealthcareService resources.
	case healthcareservice
	
	/// Group contains Location resources.
	case location
	
	/// Group contains Organization resources.
	case organization
	
	/// Group contains "person" Patient resources.
	case person
	
	/// Group contains healthcare practitioner resources (Practitioner or PractitionerRole).
	case practitioner
	
	/// Group contains RelatedPerson resources.
	case relatedperson
	
	/// Group contains Specimen resources.
	case specimen
}
