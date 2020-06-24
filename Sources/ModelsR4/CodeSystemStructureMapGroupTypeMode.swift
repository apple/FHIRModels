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
 If this is the default rule set to apply for the source type, or this combination of types.
 
 URL: http://hl7.org/fhir/map-group-type-mode
 ValueSet: http://hl7.org/fhir/ValueSet/map-group-type-mode
 */
public enum StructureMapGroupTypeMode: String, FHIRPrimitiveType {
	
	/// This group is not a default group for the types.
	case none = "none"
	
	/// This group is a default mapping group for the specified types and for the primary source type.
	case types = "types"
	
	/// This group is a default mapping group for the specified types.
	case typeAndTypes = "type-and-types"
}
