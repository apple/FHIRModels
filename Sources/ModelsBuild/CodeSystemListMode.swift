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
 The processing mode that applies to this list.
 
 URL: http://hl7.org/fhir/list-mode
 ValueSet: http://hl7.org/fhir/ValueSet/list-mode
 */
public enum ListMode: String, FHIRPrimitiveType {
	
	/// A point-in-time list that shows what changes have been made or recommended.  E.g. a discharge medication list
	/// showing what was added and removed during an encounter.
	case changes
	
	/// This list was prepared as a snapshot. It should not be assumed to be current.
	case snapshot
	
	/// This list is the master list, maintained in an ongoing fashion with regular updates as the real-world list it is
	/// tracking changes.
	case working
}
