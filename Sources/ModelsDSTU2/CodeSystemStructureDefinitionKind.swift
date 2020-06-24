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
 Defines the type of structure that a definition is describing.
 
 URL: http://hl7.org/fhir/structure-definition-kind
 ValueSet: http://hl7.org/fhir/ValueSet/structure-definition-kind
 */
public enum StructureDefinitionKind: String, FHIRPrimitiveType {
	
	/// A data type - either a primitive or complex structure that defines a set of data elements. These can be used
	/// throughout Resource and extension definitions.
	case datatype = "datatype"
	
	/// A resource defined by the FHIR specification.
	case resource = "resource"
	
	/// A logical model - a conceptual package of data that will be mapped to resources for implementation.
	case logical = "logical"
}
