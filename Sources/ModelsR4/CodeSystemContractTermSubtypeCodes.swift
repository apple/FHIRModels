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
 This value set includes sample Contract Term SubType codes.
 
 URL: http://terminology.hl7.org/CodeSystem/contracttermsubtypecodes
 ValueSet: http://hl7.org/fhir/ValueSet/contract-term-subtype
 */
public enum ContractTermSubtypeCodes: String, FHIRPrimitiveType {
	
	/// Terms that go to the very root of a contract.
	case condition = "condition"
	
	/// Less imperative than a condition, so the contract will survive a breach
	case warranty = "warranty"
	
	/// Breach of which might or might not go to the root of the contract depending upon the nature of the breach
	case innominate = "innominate"
}
