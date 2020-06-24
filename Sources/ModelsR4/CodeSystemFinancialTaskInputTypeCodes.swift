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
 This value set includes Financial Task Input Type codes.
 
 URL: http://terminology.hl7.org/CodeSystem/financialtaskinputtype
 ValueSet: http://hl7.org/fhir/ValueSet/financial-taskinputtype
 */
public enum FinancialTaskInputTypeCodes: String, FHIRPrimitiveType {
	
	/// The name of a resource to include in a selection.
	case include = "include"
	
	/// The name of a resource to not include in a selection.
	case exclude = "exclude"
	
	/// A reference to the response resource to the original processing of a resource.
	case origresponse = "origresponse"
	
	/// A reference value which must be quoted to authorize an action.
	case reference = "reference"
	
	/// The sequence number associated with an item for reprocessing.
	case item = "item"
	
	/// The reference period for the action being requested.
	case period = "period"
	
	/// The processing status from a check on the processing status of a resource such as the adjudication of a claim.
	case status = "status"
}
