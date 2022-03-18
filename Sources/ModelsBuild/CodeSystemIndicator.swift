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
 This value set captures the set of indicator codes defined by the CDS Hooks specification.
 
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
