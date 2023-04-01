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
 The set of weeks with in a month.
 
 URL: http://hl7.org/fhir/week-of-month
 ValueSet: http://hl7.org/fhir/ValueSet/week-of-month
 */
public enum WeekOfMonth: String, FHIRPrimitiveType {
	
	/// First week of the month.
	case first
	
	/// Fourth week of the month.
	case fourth
	
	/// Last week of the month.
	case last
	
	/// Second week of the month.
	case second
	
	/// Third week of the month.
	case third
}
