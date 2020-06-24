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
 This value set includes sample Contract Term Type codes.
 
 URL: http://terminology.hl7.org/CodeSystem/contracttermtypecodes
 ValueSet: http://hl7.org/fhir/ValueSet/contract-term-type
 */
public enum ContractTermTypeCodes: String, FHIRPrimitiveType {
	
	/// Based on specialized statutes that deal with particular subjects.
	case statutory = "statutory"
	
	/// Execution of the term in the contract is conditional on the execution of other actions.
	case subjectTo = "subject-to"
}
