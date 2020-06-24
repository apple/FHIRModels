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
 Value Set for QICore Adverse Event Type Codes (Preferred)
 
 URL: http://hl7.org/fhir/qicore-adverseevent-type
 ValueSet: http://hl7.org/fhir/ValueSet/qicore-adverseevent-type
 */
public enum QICoreAdverseEventTypeCodes: String, FHIRPrimitiveType {
	
	/// A safety incident, reaction, medication error, or other untoward medical event affecting a patient
	case incident = "incident"
	
	/// A safety event that almost happened, but was noticed and prevented in time to prevent harm from occurring to the
	/// patient
	case nearMiss = "near-miss"
	
	/// Any unsafe condition that poses a elevated risk to patient safety
	case unsafe = "unsafe"
}
