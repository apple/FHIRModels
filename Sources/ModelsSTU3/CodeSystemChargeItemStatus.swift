//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 3.0.1.11917
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
 Codes identifying the stage lifecycle stage of a ChargeItem
 
 URL: http://hl7.org/fhir/chargeitem-status
 ValueSet: http://hl7.org/fhir/ValueSet/chargeitem-status
 */
public enum ChargeItemStatus: String, FHIRPrimitiveType {
	
	/// The charge item has been entered, but the charged service is not  yet complete, so it shall not be billed yet
	/// but might be used in the context of pre-authorization
	case planned = "planned"
	
	/// The charge item is ready for billing
	case billable = "billable"
	
	/// The charge item has been determined to be not billable (e.g. due to rules associated with the billing code)
	case notBillable = "not-billable"
	
	/// The processing of the charge was aborted
	case aborted = "aborted"
	
	/// The charge item has been billed (e.g. a billing engine has generated financial transactions by applying the
	/// associated ruled for the charge item to the context of the Encounter, and placed them into Claims/Invoices
	case billed = "billed"
	
	/// The charge item has been entered in error and should not be processed for billing
	case enteredInError = "entered-in-error"
	
	/// The authoring system does not know which of the status values currently applies for this charge item  Note: This
	/// concept is not to be used for "other" - one of the listed statuses is presumed to apply, it's just not known
	/// which one.
	case unknown = "unknown"
}
