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
 The lifecycle status of an artifact.
 
 URL: http://hl7.org/fhir/publication-status
 ValueSet: http://hl7.org/fhir/ValueSet/publication-status
 */
public enum PublicationStatus: String, FHIRPrimitiveType {
	
	/// This resource is still under development and is not yet considered to be ready for normal use.
	case draft = "draft"
	
	/// This resource is ready for normal use.
	case active = "active"
	
	/// This resource has been withdrawn or superseded and should no longer be used.
	case retired = "retired"
	
	/// The authoring system does not know which of the status values currently applies for this resource.  Note: This
	/// concept is not to be used for "other" - one of the listed statuses is presumed to apply, it's just not known
	/// which one.
	case unknown = "unknown"
}
