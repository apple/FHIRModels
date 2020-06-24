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
 Why a resource is included in the guide.
 
 URL: http://hl7.org/fhir/guide-resource-purpose
 ValueSet: http://hl7.org/fhir/ValueSet/guide-resource-purpose
 */
public enum GuideResourcePurpose: String, FHIRPrimitiveType {
	
	/// The resource is intended as an example.
	case example = "example"
	
	/// The resource defines a value set or concept map used in the implementation guide.
	case terminology = "terminology"
	
	/// The resource defines a profile (StructureDefinition) that is used in the implementation guide.
	case profile = "profile"
	
	/// The resource defines an extension (StructureDefinition) that is used in the implementation guide.
	case `extension` = "extension"
	
	/// The resource contains a dictionary that is part of the implementation guide.
	case dictionary = "dictionary"
	
	/// The resource defines a logical model (in a StructureDefinition) that is used in the implementation guide.
	case logical = "logical"
}
