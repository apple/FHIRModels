//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.3.0
//  Copyright 2023 Apple Inc.
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
 Indicates whether this flag is active and needs to be displayed to a user, or whether it is no longer needed or was
 entered in error.
 
 URL: http://hl7.org/fhir/flag-status
 ValueSet: http://hl7.org/fhir/ValueSet/flag-status
 */
public enum FlagStatus: String, FHIRPrimitiveType {
	
	/// A current flag that should be displayed to a user. A system may use the category to determine which user roles
	/// should view the flag.
	case active
	
	/// The flag was added in error and should no longer be displayed.
	case enteredInError = "entered-in-error"
	
	/// The flag no longer needs to be displayed.
	case inactive
}
