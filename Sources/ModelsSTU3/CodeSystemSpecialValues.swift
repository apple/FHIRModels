//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 3.0.1.11917
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
 A set of generally useful codes defined so they can be included in value sets.
 
 URL: http://hl7.org/fhir/special-values
 ValueSet: http://hl7.org/fhir/ValueSet/special-values
 */
public enum SpecialValues: String, FHIRPrimitiveType {
	
	/// Boolean true.
	case `true` = "true"
	
	/// Boolean false.
	case `false` = "false"
	
	/// The content is greater than zero, but too small to be quantified.
	case trace = "trace"
	
	/// The specific quantity is not known, but is known to be non-zero and is not specified because it makes up the
	/// bulk of the material.
	case sufficient = "sufficient"
	
	/// The value is no longer available.
	case withdrawn = "withdrawn"
	
	/// The are no known applicable values in this context.
	case nilKnown = "nil-known"
}
