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
 This value set includes Financial Task codes.
 
 URL: http://terminology.hl7.org/CodeSystem/financialtaskcode
 ValueSet: http://hl7.org/fhir/ValueSet/financial-taskcode
 */
public enum FinancialTaskCodes: String, FHIRPrimitiveType {
	
	/// Cancel or reverse a resource, such as a claim or preauthorization, which is in-process or complete.
	case cancel = "cancel"
	
	/// Retrieve selected or all queued resources or messages.
	case poll = "poll"
	
	/// Release any reserved funds or material obligations associated with a resource. For example, any unused but
	/// reserved funds or treatment allowance associated with a preauthorization once treatment is complete.
	case release = "release"
	
	/// Indication that the processing of a resource, such as a claim, for some or all of the required work is now being
	/// requested.
	case reprocess = "reprocess"
	
	/// Check on the processing status of a resource such as the adjudication of a claim.
	case status = "status"
}
