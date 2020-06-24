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
 The type of knowledge asset this library contains.
 
 URL: http://terminology.hl7.org/CodeSystem/library-type
 ValueSet: http://hl7.org/fhir/ValueSet/library-type
 */
public enum LibraryType: String, FHIRPrimitiveType {
	
	/// The resource is a shareable library of formalized knowledge.
	case logicLibrary = "logic-library"
	
	/// The resource is a definition of an information model.
	case modelDefinition = "model-definition"
	
	/// The resource is a collection of knowledge assets.
	case assetCollection = "asset-collection"
	
	/// The resource defines the dependencies, parameters, and data requirements for a particular module or evaluation
	/// context.
	case moduleDefinition = "module-definition"
}
