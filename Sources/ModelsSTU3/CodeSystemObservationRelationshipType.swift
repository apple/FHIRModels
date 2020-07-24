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
 Codes specifying how two observations are related.
 
 URL: http://hl7.org/fhir/observation-relationshiptypes
 ValueSet: http://hl7.org/fhir/ValueSet/observation-relationshiptypes
 */
public enum ObservationRelationshipType: String, FHIRPrimitiveType {
	
	/// This observation is a group observation (e.g. a battery, a panel of tests, a set of vital sign measurements)
	/// that includes the target as a member of the group.
	case hasMember = "has-member"
	
	/// The target resource (Observation or QuestionnaireResponse) is part of the information from which this
	/// observation value is derived. (e.g. calculated anion gap, Apgar score)  NOTE:  "derived-from" is the only
	/// logical choice when referencing QuestionnaireResponse.
	case derivedFrom = "derived-from"
	
	/// This observation follows the target observation (e.g. timed tests such as Glucose Tolerance Test).
	case sequelTo = "sequel-to"
	
	/// This observation replaces a previous observation (i.e. a revised value). The target observation is now obsolete.
	case replaces = "replaces"
	
	/// The value of the target observation qualifies (refines) the semantics of the source observation (e.g. a lipemia
	/// measure target from a plasma measure).
	case qualifiedBy = "qualified-by"
	
	/// The value of the target observation interferes (degrades quality, or prevents valid observation) with the
	/// semantics of the source observation (e.g. a hemolysis measure target from a plasma potassium measure, which has
	/// no value).
	case interferedBy = "interfered-by"
}
