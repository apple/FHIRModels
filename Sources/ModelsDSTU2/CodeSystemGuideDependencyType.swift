//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 1.0.2.7202
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
 How a dependency is represented when the guide is published.
 
 URL: http://hl7.org/fhir/guide-dependency-type
 ValueSet: http://hl7.org/fhir/ValueSet/guide-dependency-type
 */
public enum GuideDependencyType: String, FHIRPrimitiveType {
	
	/// The guide is referred to by URL.
	case reference = "reference"
	
	/// The guide is embedded in this guide when published.
	case inclusion = "inclusion"
}
