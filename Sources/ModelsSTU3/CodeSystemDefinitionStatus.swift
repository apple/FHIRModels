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
 Codes identifying the lifecycle stage of a definition
 
 URL: http://hl7.org/fhir/definition-status
 ValueSet: http://hl7.org/fhir/ValueSet/definition-status
 */
public enum DefinitionStatus: String, FHIRPrimitiveType {
	
	/// The definition is in the design stage and is not yet considered to be "ready for use"
	case draft = "draft"
	
	/// The definition is considered ready for use
	case active = "active"
	
	/// The definition should no longer be used
	case withdrawn = "withdrawn"
	
	/// The authoring system does not know which of the status values currently applies for this request.  Note: This
	/// concept is not to be used for "other" - one of the listed statuses is presumed to apply, it's just not known
	/// which one.
	case unknown = "unknown"
}
