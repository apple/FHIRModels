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
 Codes identifying the lifecycle stage of a definition.
 
 URL: http://terminology.hl7.org/CodeSystem/definition-status
 ValueSet: http://hl7.org/fhir/ValueSet/definition-status
 */
public enum DefinitionStatus: String, FHIRPrimitiveType {
	
	/// The definition is in the design stage and is not yet considered to be "ready for use".
	case draft = "draft"
	
	/// The definition is considered ready for use.
	case active = "active"
	
	/// The definition should no longer be used.
	case withdrawn = "withdrawn"
	
	/// The authoring/source system does not know which of the status values currently applies for this resource.  Note:
	/// This concept is not to be used for "other" - one of the listed statuses is presumed to apply,  but the
	/// authoring/source system does not know which.
	case unknown = "unknown"
}
