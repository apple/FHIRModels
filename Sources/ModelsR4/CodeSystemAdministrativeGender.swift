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
 The gender of a person used for administrative purposes.
 
 URL: http://hl7.org/fhir/administrative-gender
 ValueSet: http://hl7.org/fhir/ValueSet/administrative-gender
 */
public enum AdministrativeGender: String, FHIRPrimitiveType {
	
	/// Male.
	case male = "male"
	
	/// Female.
	case female = "female"
	
	/// Other.
	case other = "other"
	
	/// Unknown.
	case unknown = "unknown"
}
