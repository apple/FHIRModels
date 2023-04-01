//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.3.0
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
 This value set includes a smattering of Adjudication codes.
 
 URL: http://terminology.hl7.org/CodeSystem/adjudication
 */
public enum AdjudicationCodes: String, FHIRPrimitiveType {
	
	/// Amount payable under the coverage
	case benefit
	
	/// Patient Co-Payment
	case copay
	
	/// Amount deducted from the eligible amount prior to adjudication.
	case deductible
	
	/// Amount of the change which is considered for adjudication.
	case eligible
	
	/// Eligible Percentage.
	case eligpercent
	
	/// The total submitted amount for the claim or group or line item.
	case submitted
	
	/// The amount of tax.
	case tax
	
	/// The amount of deductible which could not allocated to other line items.
	case unallocdeduct
}
