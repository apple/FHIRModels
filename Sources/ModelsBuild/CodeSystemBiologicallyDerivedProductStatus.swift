//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 6.0.0-ballot3
//  Copyright 2025 Apple Inc.
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
 Biologically Derived Product Status.
 
 URL: http://hl7.org/fhir/biologicallyderived-product-status
 ValueSet: http://hl7.org/fhir/ValueSet/biologicallyderived-product-status
 */
public enum BiologicallyDerivedProductStatus: String, FHIRPrimitiveType {
	
	/// The biologically derived product has been clinically applied.
	case applied
	
	/// Product is currently available for use.
	case available
	
	/// The biologically derived product has been discarded.
	case discarded
	
	/// The biologically derived product has been further processed to one or more other products.
	case processed
	
	/// Product is not currently available for use.
	case unavailable
}
