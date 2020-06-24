//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 1.0.2.7202
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
 Preferred value set for Condition Clinical Status.
 
 URL: http://hl7.org/fhir/condition-clinical
 ValueSet: http://hl7.org/fhir/ValueSet/condition-clinical
 */
public enum ConditionClinicalStatusCodes: String, FHIRPrimitiveType {
	
	/// The subject is currently experiencing the symptoms of the condition.
	case active = "active"
	
	/// The subject is re-experiencing the symptoms of the condition after a period of remission or presumed resolution.
	case relapse = "relapse"
	
	/// The subject is no longer experiencing the symptoms of the condition, but there is a risk of the symptoms
	/// returning.
	case remission = "remission"
	
	/// The subject is no longer experiencing the symptoms of the condition and there is no perceived risk of the
	/// symptoms returning.
	case resolved = "resolved"
}
