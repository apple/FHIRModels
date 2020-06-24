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
 A code that indicates how the server supports conditional delete.
 
 URL: http://hl7.org/fhir/conditional-delete-status
 ValueSet: http://hl7.org/fhir/ValueSet/conditional-delete-status
 */
public enum ConditionalDeleteStatus: String, FHIRPrimitiveType {
	
	/// No support for conditional deletes.
	case notSupported = "not-supported"
	
	/// Conditional deletes are supported, but only single resources at a time.
	case single = "single"
	
	/// Conditional deletes are supported, and multiple resources can be deleted in a single interaction.
	case multiple = "multiple"
}
