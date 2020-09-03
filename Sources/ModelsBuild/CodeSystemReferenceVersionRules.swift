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
 Whether a reference needs to be version specific or version independent, or whether either can be used.
 
 URL: http://hl7.org/fhir/reference-version-rules
 ValueSet: http://hl7.org/fhir/ValueSet/reference-version-rules
 */
public enum ReferenceVersionRules: String, FHIRPrimitiveType {
	
	/// The reference may be either version independent or version specific.
	case either = "either"
	
	/// The reference must be version independent.
	case independent = "independent"
	
	/// The reference must be version specific.
	case specific = "specific"
}
