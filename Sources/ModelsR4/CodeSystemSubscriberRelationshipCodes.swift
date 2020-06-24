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
 This value set includes codes for the relationship between the Subscriber and the Beneficiary (insured/covered
 party/patient).
 
 URL: http://terminology.hl7.org/CodeSystem/subscriber-relationship
 ValueSet: http://hl7.org/fhir/ValueSet/subscriber-relationship
 */
public enum SubscriberRelationshipCodes: String, FHIRPrimitiveType {
	
	/// The Beneficiary is a child of the Subscriber
	case child = "child"
	
	/// The Beneficiary is a parent of the Subscriber
	case parent = "parent"
	
	/// The Beneficiary is a spouse or equivalent of the Subscriber
	case spouse = "spouse"
	
	/// The Beneficiary is a common law spouse or equivalent of the Subscriber
	case common = "common"
	
	/// The Beneficiary has some other relationship the Subscriber
	case other = "other"
	
	/// The Beneficiary is the Subscriber
	case `self` = "self"
	
	/// The Beneficiary is covered under insurance of the subscriber due to an injury.
	case injured = "injured"
}
