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
 How the referenced structure is used in this mapping
 
 URL: http://hl7.org/fhir/map-model-mode
 ValueSet: http://hl7.org/fhir/ValueSet/map-model-mode
 */
public enum StructureMapModelMode: String, FHIRPrimitiveType {
	
	/// This structure describes an instance passed to the mapping engine that is used a source of data
	case source = "source"
	
	/// This structure describes an instance that the mapping engine may ask for that is used a source of data
	case queried = "queried"
	
	/// This structure describes an instance passed to the mapping engine that is used a target of data
	case target = "target"
	
	/// This structure describes an instance that the mapping engine may ask to create that is used a target of data
	case produced = "produced"
}
