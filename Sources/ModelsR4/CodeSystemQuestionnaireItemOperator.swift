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
 The criteria by which a question is enabled.
 
 URL: http://hl7.org/fhir/questionnaire-enable-operator
 ValueSet: http://hl7.org/fhir/ValueSet/questionnaire-enable-operator
 */
public enum QuestionnaireItemOperator: String, FHIRPrimitiveType {
	
	/// True if whether an answer exists is equal to the enableWhen answer (which must be a boolean).
	case exists = "exists"
	
	/// True if whether at least one answer has a value that is equal to the enableWhen answer.
	case equal = "="
	
	/// True if whether at least no answer has a value that is equal to the enableWhen answer.
	case notEqual = "!="
	
	/// True if whether at least no answer has a value that is greater than the enableWhen answer.
	case greaterThan = ">"
	
	/// True if whether at least no answer has a value that is less than the enableWhen answer.
	case lessThan = "<"
	
	/// True if whether at least no answer has a value that is greater or equal to the enableWhen answer.
	case greaterThanOrEqual = ">="
	
	/// True if whether at least no answer has a value that is less or equal to the enableWhen answer.
	case lessThanOrEqual = "<="
}
