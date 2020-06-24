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
 Preferred value set for Condition Clinical Status.
 
 URL: http://terminology.hl7.org/CodeSystem/condition-clinical
 ValueSet: http://hl7.org/fhir/ValueSet/condition-clinical
 */
public enum ConditionClinicalStatusCodes: String, FHIRPrimitiveType {
	
	/// The subject is currently experiencing the symptoms of the condition or there is evidence of the condition.
	case active = "active"
	
	/// The subject is experiencing a re-occurence or repeating of a previously resolved condition, e.g. urinary tract
	/// infection, pancreatitis, cholangitis, conjunctivitis.
	case recurrence = "recurrence"
	
	/// The subject is experiencing a return of a condition, or signs and symptoms after a period of improvement or
	/// remission, e.g. relapse of cancer, multiple sclerosis, rheumatoid arthritis, systemic lupus erythematosus,
	/// bipolar disorder, [psychotic relapse of] schizophrenia, etc.
	case relapse = "relapse"
	
	/// The subject is no longer experiencing the symptoms of the condition or there is no longer evidence of the
	/// condition.
	case inactive = "inactive"
	
	/// The subject is no longer experiencing the symptoms of the condition, but there is a risk of the symptoms
	/// returning.
	case remission = "remission"
	
	/// The subject is no longer experiencing the symptoms of the condition and there is a negligible perceived risk of
	/// the symptoms returning.
	case resolved = "resolved"
}
