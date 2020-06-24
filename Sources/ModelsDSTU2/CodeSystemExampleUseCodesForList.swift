//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 1.0.2.7202
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
 Example use codes for the List resource - typical kinds of use.
 
 URL: http://hl7.org/fhir/list-example-use-codes
 ValueSet: http://hl7.org/fhir/ValueSet/list-example-codes
 */
public enum ExampleUseCodesForList: String, FHIRPrimitiveType {
	
	/// A list of alerts for the patient.
	case alerts = "alerts"
	
	/// A list of part adverse reactions.
	case adverserxns = "adverserxns"
	
	/// A list of Allergies for the patient.
	case allergies = "allergies"
	
	/// A list of medication statements for the patient.
	case medications = "medications"
	
	/// A list of problems that the patient is known of have (or have had in the past).
	case problems = "problems"
	
	/// A list of items that constitute a set of work to be performed (typically this code would be specialized for more
	/// specific uses, such as a ward round list).
	case worklist = "worklist"
	
	/// A list of items waiting for an event (perhaps a surgical patient waiting list).
	case waiting = "waiting"
	
	/// A set of protocols to be followed.
	case protocols = "protocols"
	
	/// A set of care plans that apply in a particular context of care.
	case plans = "plans"
}
