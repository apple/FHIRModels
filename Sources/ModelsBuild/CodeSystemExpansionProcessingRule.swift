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
 None
 
 URL: http://hl7.org/fhir/expansion-processing-rule
 */
public enum ExpansionProcessingRule: String, FHIRPrimitiveType {
	
	/// he expansion (e.g. when in UI mode) includes all codes; those included in a group and those not included in a
	/// group, as well as the codes for the groups themselves (e.g. a parent node in a hierarchical code system).
	case allCodes = "all-codes"
	
	/// The expansion (e.g. when in UI mode) only includes the codes for the groups.
	case groupsOnly = "groups-only"
	
	/// The expansion (e.g. when in UI mode) includes the codes for the groups, and any codes that are not included in a
	/// group.
	case ungrouped
}
