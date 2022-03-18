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
 Concepts for how a measure report consumer and receiver coordinate data exchange updates. The choices are snapshot or
 incremental updates
 
 URL: http://hl7.org/fhir/CodeSystem/submit-data-update-type
 ValueSet: http://hl7.org/fhir/ValueSet/submit-data-update-type
 */
public enum SubmitDataUpdateType: String, FHIRPrimitiveType {
	
	/// In contrast to the Snapshot Update, the FHIR Parameters resource used in a Submit Data or the Collect Data
	/// scenario contains only the new and updated DEQM and QI Core Profiles since the last transaction. If the Consumer
	/// supports incremental updates, the contents of the updated payload updates the previous payload data.
	case incremental
	
	/// In contrast to the Incremental Update, the FHIR Parameters resource used in a Submit Data or the Collect Data
	/// scenario contains all the DEQM and QI Core Profiles for each transaction.  If the Consumer supports snapshot
	/// updates, the contents of the updated payload entirely replaces the previous payload
	case snapshot
}
