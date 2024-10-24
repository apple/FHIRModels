//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 6.0.0-ballot2
//  Copyright 2024 Apple Inc.
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
 BiologicallyDerivedProductDispense Status Codes
 
 URL: http://hl7.org/fhir/biologicallyderivedproductdispense-status
 ValueSet: http://hl7.org/fhir/ValueSet/biologicallyderivedproductdispense-status
 */
public enum BiologicallyDerivedProductDispenseStatus: String, FHIRPrimitiveType {
	
	/// The requested product has been allocated and is ready for transport.
	case allocated
	
	/// The dispense was entered in error and therefore nullified.
	case enteredInError = "entered-in-error"
	
	/// The dispense process is in progress.
	case inProgress = "in-progress"
	
	/// The dispensed product has been picked up.
	case issued
	
	/// The dispense process has started but not yet completed.
	case preparation
	
	/// The dispensed product was returned.
	case returned
	
	/// The dispense could not be completed.
	case unfulfilled
	
	/// The authoring system does not know which of the status values applies for this dispense. Note: this concept is
	/// not to be used for other - one of the listed statuses is presumed to apply, it's just not known which one.
	case unknown
}
