//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.6.0-048af26
//  Copyright 2022 Apple Inc.
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
 The status of the InventoryReport.
 
 URL: http://hl7.org/fhir/inventoryreport-status
 ValueSet: http://hl7.org/fhir/ValueSet/inventoryreport-status
 */
public enum InventoryReportStatus: String, FHIRPrimitiveType {
	
	/// This report is submitted as current.
	case active
	
	/// The existence of the report is registered, but it is still without content or only some preliminary content.
	case draft
	
	/// The report has been withdrawn following a previous final release.  This electronic record should never have
	/// existed, though it is possible that real-world decisions were based on it.
	case enteredInError = "entered-in-error"
	
	/// The inventory report has been requested but there is no data available.
	case requested
}
