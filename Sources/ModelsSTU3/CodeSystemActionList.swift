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
 List of allowable action which this resource can request.
 
 URL: http://hl7.org/fhir/actionlist
 ValueSet: http://hl7.org/fhir/ValueSet/actionlist
 */
public enum ActionList: String, FHIRPrimitiveType {
	
	/// Cancel, reverse or nullify the target resource.
	case cancel = "cancel"
	
	/// Check for previously un-read/ not-retrieved resources.
	case poll = "poll"
	
	/// Re-process the target resource.
	case reprocess = "reprocess"
	
	/// Retrieve the processing status of the target resource.
	case status = "status"
}
