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
 A code that describes how a member of the group participates in the group.
 
 URL: http://hl7.org/fhir/group-involvement
 ValueSet: http://hl7.org/fhir/ValueSet/group-involvement
 */
public enum GroupInvolvement: String, FHIRPrimitiveType {
	
	/// The group member was working in the workplace, but is not consistently present.
	case casual
	
	/// Patient is included in the list on the grounds of being a family member in a family group. See [Relationships
	/// inside the group](group.html#relationships) for more detailed family relationships.
	case familyMember = "family-member"
	
	/// This is the group member's primary workplace on a consistent basis.
	case fullTime = "full-time"
	
	/// The first case that is the reason for creating the group. Usually the first known infection, but other kinds of
	/// first are known.
	case indexCase = "index-case"
	
	/// Household member is a legally / officially registered owner of the dwelling that contains the household. Or at
	/// least, considers themselves the rightful owner.
	case owner
	
	/// The group member works in the workplace, but on an occasional basis.
	case partTime = "part-time"
	
	/// Group member is animal kept as a pet by the family/household.
	case pet
	
	/// Patient is included in the list on the grounds of being the primary contact point for a family, household,
	/// workplace, etc.
	case primaryContact = "primary-contact"
	
	/// Patient is included in the list on the grounds of being a primary exposure case (sometimes, but not
	/// neceessarily, direct exposure to the index case, or a known infected person).
	case primaryExposure = "primary-exposure"
	
	/// Household member is a resident - that is, they consistently reside in the dwelling.
	case resident
	
	/// Patient is included in the list on the grounds of being a secondary exposure case - that is, exposed to a
	/// potentially infected patient or person of interest.
	case secondaryExposure = "secondary-exposure"
	
	/// Household member is a member of the staff working in the dwelling (and by implication, not a resident).
	case staff
	
	/// Household member is transiently visiting the dwelling during (part of) the period of interest, or, for a
	/// workplace, a person who was/is in the workplace but not an employee
	case visitor
}
