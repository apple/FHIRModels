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
 Defines which action to take if there is no match in the group.
 
 URL: http://hl7.org/fhir/conceptmap-unmapped-mode
 ValueSet: http://hl7.org/fhir/ValueSet/conceptmap-unmapped-mode
 */
public enum ConceptMapGroupUnmappedMode: String, FHIRPrimitiveType {
	
	/// Use the code as provided in the $translate request.
	case provided = "provided"
	
	/// Use the code explicitly provided in the group.unmapped.
	case fixed = "fixed"
	
	/// Use the map identified by the canonical URL in the url element.
	case otherMap = "other-map"
}
