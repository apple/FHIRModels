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
 A list of the base types defined by this version of the FHIR specification - types that are defined, but for which only
 specializations actually are created.
 
 URL: http://hl7.org/fhir/abstract-types
 */
public enum AbstractType: String, FHIRPrimitiveType {
	
	/// A place holder that means any kind of data type
	case type = "Type"
	
	/// A place holder that means any kind of resource
	case any = "Any"
}
