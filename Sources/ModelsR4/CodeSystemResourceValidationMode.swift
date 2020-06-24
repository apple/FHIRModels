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
 Codes indicating the type of validation to perform.
 
 URL: http://hl7.org/fhir/resource-validation-mode
 ValueSet: http://hl7.org/fhir/ValueSet/resource-validation-mode
 */
public enum ResourceValidationMode: String, FHIRPrimitiveType {
	
	/// The server checks the content, and then checks that the content would be acceptable as a create (e.g. that the
	/// content would not violate any uniqueness constraints).
	case create = "create"
	
	/// The server checks the content, and then checks that it would accept it as an update against the nominated
	/// specific resource (e.g. that there are no changes to immutable fields the server does not allow to change and
	/// checking version integrity if appropriate).
	case update = "update"
	
	/// The server ignores the content and checks that the nominated resource is allowed to be deleted (e.g. checking
	/// referential integrity rules).
	case delete = "delete"
	
	/// The server checks an existing resource (must be nominated by id, not provided as a parameter) as valid against
	/// the nominated profile.
	case profile = "profile"
}
