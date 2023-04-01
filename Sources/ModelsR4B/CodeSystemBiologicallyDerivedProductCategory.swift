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
 Biologically Derived Product Category.
 
 URL: http://hl7.org/fhir/product-category
 ValueSet: http://hl7.org/fhir/ValueSet/product-category
 */
public enum BiologicallyDerivedProductCategory: String, FHIRPrimitiveType {
	
	/// Biological agent of unspecified type.
	case biologicalAgent
	
	/// Collection of cells.
	case cells
	
	/// Body fluid.
	case fluid
	
	/// A collection of tissues joined in a structural unit to serve a common function.
	case organ
	
	/// An ensemble of similar cells and their extracellular matrix from the same origin that together carry out a
	/// specific function.
	case tissue
}
