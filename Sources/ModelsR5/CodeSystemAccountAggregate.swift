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
 Indicates who is expected to pay a part of the account balance.
 
 URL: http://hl7.org/fhir/account-aggregate
 ValueSet: http://hl7.org/fhir/ValueSet/account-aggregate
 */
public enum AccountAggregate: String, FHIRPrimitiveType {
	
	/// This (aggregated) balance is expected to be paid by Insurance coverage(s)
	case insurance
	
	/// This (aggregated) balance is expected to be paid by the Patient
	case patient
	
	/// There is no aggregation on this balance
	case total
}
