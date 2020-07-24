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
 Defines requiredness behavior for selecting an action or an action group
 
 URL: http://hl7.org/fhir/action-required-behavior
 ValueSet: http://hl7.org/fhir/ValueSet/action-required-behavior
 */
public enum ActionRequiredBehavior: String, FHIRPrimitiveType {
	
	/// An action with this behavior must be included in the actions processed by the end user; the end user may not
	/// choose not to include this action
	case must = "must"
	
	/// An action with this behavior may be included in the set of actions processed by the end user
	case could = "could"
	
	/// An action with this behavior must be included in the set of actions processed by the end user, unless the end
	/// user provides documentation as to why the action was not included
	case mustUnlessDocumented = "must-unless-documented"
}
