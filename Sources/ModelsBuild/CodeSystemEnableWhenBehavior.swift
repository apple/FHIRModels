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
 Controls how multiple enableWhen values are interpreted -  whether all or any must be true.
 
 URL: http://hl7.org/fhir/questionnaire-enable-behavior
 ValueSet: http://hl7.org/fhir/ValueSet/questionnaire-enable-behavior
 */
public enum EnableWhenBehavior: String, FHIRPrimitiveType {
	
	/// Enable the question when all the enableWhen criteria are satisfied.
	case all = "all"
	
	/// Enable the question when any of the enableWhen criteria are satisfied.
	case any = "any"
}
