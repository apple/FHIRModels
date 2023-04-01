//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 5.0.0
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
 How resource references can be aggregated.
 
 URL: http://hl7.org/fhir/resource-aggregation-mode
 ValueSet: http://hl7.org/fhir/ValueSet/resource-aggregation-mode
 */
public enum AggregationMode: String, FHIRPrimitiveType {
	
	/// When the resource is in a Bundle, the resource the reference points to will be found in the same bundle as the
	/// resource that includes the reference.
	case bundled
	
	/// The reference is a local reference to a contained resource.
	case contained
	
	/// The reference to a resource that has to be resolved externally to the resource that includes the reference.
	case referenced
}
