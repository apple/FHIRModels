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
 If field is a list, how to manage the source.
 
 URL: http://hl7.org/fhir/map-source-list-mode
 ValueSet: http://hl7.org/fhir/ValueSet/map-source-list-mode
 */
public enum StructureMapSourceListMode: String, FHIRPrimitiveType {
	
	/// Only process this rule for the first in the list.
	case first = "first"
	
	/// Process this rule for all but the first.
	case not_first = "not_first"
	
	/// Only process this rule for the last in the list.
	case last = "last"
	
	/// Process this rule for all but the last.
	case not_last = "not_last"
	
	/// Only process this rule is there is only item.
	case only_one = "only_one"
}
