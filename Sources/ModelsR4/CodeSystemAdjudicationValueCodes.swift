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
 This value set includes a smattering of Adjudication Value codes which includes codes to indicate the amounts eligible
 under the plan, the amount of benefit, copays etc.
 
 URL: http://terminology.hl7.org/CodeSystem/adjudication
 ValueSet: http://hl7.org/fhir/ValueSet/adjudication
 */
public enum AdjudicationValueCodes: String, FHIRPrimitiveType {
	
	/// The total submitted amount for the claim or group or line item.
	case submitted = "submitted"
	
	/// Patient Co-Payment
	case copay = "copay"
	
	/// Amount of the change which is considered for adjudication.
	case eligible = "eligible"
	
	/// Amount deducted from the eligible amount prior to adjudication.
	case deductible = "deductible"
	
	/// The amount of deductible which could not allocated to other line items.
	case unallocdeduct = "unallocdeduct"
	
	/// Eligible Percentage.
	case eligpercent = "eligpercent"
	
	/// The amount of tax.
	case tax = "tax"
	
	/// Amount payable under the coverage
	case benefit = "benefit"
}
