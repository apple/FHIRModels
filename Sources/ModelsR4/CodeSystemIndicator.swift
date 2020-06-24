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
 This value set captures the set of indicator codes defined by the CDS Hooks specification.
 
 URL: http://cds-hooks.hl7.org/CodeSystem/indicator
 ValueSet: http://hl7.org/fhir/ValueSet/cdshooks-indicator
 */
public enum Indicator: String, FHIRPrimitiveType {
	
	/// info
	case info = "info"
	
	/// warning
	case warning = "warning"
	
	/// critical
	case critical = "critical"
}
