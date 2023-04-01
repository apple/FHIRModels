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
 Example Measure Groups for the Measure Resource.
 
 URL: http://terminology.hl7.org/CodeSystem/measure-group-example
 ValueSet: http://hl7.org/fhir/ValueSet/measure-group-example
 */
public enum MeasureGroupExample: String, FHIRPrimitiveType {
	
	/// Primary Measure Group.
	case primaryRate = "primary-rate"
	
	/// Secondary Measure Group
	case secondaryRate = "secondary-rate"
}
