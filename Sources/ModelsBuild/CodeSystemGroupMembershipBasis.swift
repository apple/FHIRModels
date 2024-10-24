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
 Basis for membership in a group
 
 URL: http://hl7.org/fhir/group-membership-basis
 ValueSet: http://hl7.org/fhir/ValueSet/group-membership-basis
 */
public enum GroupMembershipBasis: String, FHIRPrimitiveType {
	
	/// The Group.characteristics specified are both necessary and sufficient to determine membership. The 'conceptual'
	/// Group is a 'definitional' Group in which the Group.type is not bound to FHIR types.
	case conceptual
	
	/// The Group.characteristics specified are both necessary and sufficient to determine membership. All entities that
	/// meet the criteria are considered to be members of the group, whether referenced by the group or not. If members
	/// are present, they are individuals that happen to be known as meeting the Group.characteristics. The list cannot
	/// be presumed to be complete.
	case definitional
	
	/// The Group.characteristics are necessary but not sufficient to determine membership. Membership is determined by
	/// being listed as one of the Group.member.
	case enumerated
}
