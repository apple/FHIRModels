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
 This is an example value set defined by the FHIR project, that could be used in Emergency to indicate the encounter
 priority as determined by triage.
 
 URL: http://hl7.org/fhir/encounter-priority
 ValueSet: http://hl7.org/fhir/ValueSet/encounter-priority
 */
public enum EncounterPriority: String, FHIRPrimitiveType {
	
	/// Within seconds.
	case imm = "imm"
	
	/// Within 10 minutes.
	case emg = "emg"
	
	/// Within 30 minutes.
	case urg = "urg"
	
	/// Within 60 minutes.
	case sUrg = "s-urg"
	
	/// Within 120 minutes.
	case noUrg = "no-urg"
}
