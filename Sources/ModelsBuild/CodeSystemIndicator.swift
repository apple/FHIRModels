//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 6.0.0-ballot3
//  Copyright 2025 Apple Inc.
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
 This codesystem captures the indicator codes defined by the CDS Hooks specification. The indicator is included as an
 element of the cards in a CDS Hooks response and conveys the urgency and/or importance of the information in each card.
 See [Card Attributes](https://cds-hooks.hl7.org/1.0/#card-attributes) in the CDS Hooks specification for more
 information.
 
 URL: http://cds-hooks.hl7.org/CodeSystem/indicator
 ValueSet: http://hl7.org/fhir/ValueSet/cdshooks-indicator
 */
public enum Indicator: String, FHIRPrimitiveType {
	
	/// The response is critical and indicates that it contains information or activities that have high urgency and
	/// importance that should be immediately addressed
	case critical
	
	/// The response is informational and indicates that it contains additional information or relevant guidance that
	/// may be of interest
	case info
	
	/// The response is a warning and indicates that it contains urgent or highly relevant information that should be
	/// considered
	case warning
}
