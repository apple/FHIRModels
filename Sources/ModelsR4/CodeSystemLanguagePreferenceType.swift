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
 This value set defines the set of codes for describing the type or mode of the patient's preferred language.
 
 URL: http://hl7.org/fhir/language-preference-type
 */
public enum LanguagePreferenceType: String, FHIRPrimitiveType {
	
	/// The patient prefers to verbally communicate with the associated language.
	case verbal = "verbal"
	
	/// The patient prefers to communicate in writing with the associated language.
	case written = "written"
}
