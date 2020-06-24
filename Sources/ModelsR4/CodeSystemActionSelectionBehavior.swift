//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.0.1-9346c8cc45
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
 Defines selection behavior of a group.
 
 URL: http://hl7.org/fhir/action-selection-behavior
 ValueSet: http://hl7.org/fhir/ValueSet/action-selection-behavior
 */
public enum ActionSelectionBehavior: String, FHIRPrimitiveType {
	
	/// Any number of the actions in the group may be chosen, from zero to all.
	case any = "any"
	
	/// All the actions in the group must be selected as a single unit.
	case all = "all"
	
	/// All the actions in the group are meant to be chosen as a single unit: either all must be selected by the end
	/// user, or none may be selected.
	case allOrNone = "all-or-none"
	
	/// The end user must choose one and only one of the selectable actions in the group. The user SHALL NOT choose none
	/// of the actions in the group.
	case exactlyOne = "exactly-one"
	
	/// The end user may choose zero or at most one of the actions in the group.
	case atMostOne = "at-most-one"
	
	/// The end user must choose a minimum of one, and as many additional as desired.
	case oneOrMore = "one-or-more"
}
