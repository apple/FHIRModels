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
 Defines the type of structure that a definition is describing.
 
 URL: http://hl7.org/fhir/structure-definition-kind
 ValueSet: http://hl7.org/fhir/ValueSet/structure-definition-kind
 */
public enum StructureDefinitionKind: String, FHIRPrimitiveType {
	
	/// A primitive type that has a value and an extension. These can be used throughout complex datatype, Resource and
	/// extension definitions. Only the base specification can define primitive types.
	case primitiveType = "primitive-type"
	
	/// A  complex structure that defines a set of data elements that is suitable for use in 'resources'. The base
	/// specification defines a number of complex types, and other specifications can define additional types. These
	/// structures do not have a maintained identity.
	case complexType = "complex-type"
	
	/// A 'resource' - a directed acyclic graph of elements that aggregrates other types into an identifiable entity.
	/// The base FHIR resources are defined by the FHIR specification itself but other 'resources' can be defined in
	/// additional specifications (though these will not be recognised as 'resources' by the FHIR specification (i.e.
	/// they do not get end-points etc, or act as the targets of references in FHIR defined resources - though other
	/// specificatiosn can treat them this way).
	case resource = "resource"
	
	/// A pattern or a template that is not intended to be a real resource or complex type.
	case logical = "logical"
}
