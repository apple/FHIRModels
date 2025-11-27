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
 Classification of the variable.
 
 URL: http://hl7.org/fhir/evidence-variable-classifier
 ValueSet: http://hl7.org/fhir/ValueSet/evidence-variable-classifier
 */
public enum EvidenceVariableClassifier: String, FHIRPrimitiveType {
	
	/// Disease, diagnosis, or condition.
	case condition
	
	/// Laboratory test value or other measurement.
	case measurement
	
	/// A response to a survey or questionnaire item.
	case questionnaireResponse = "questionnaire-response"
}
