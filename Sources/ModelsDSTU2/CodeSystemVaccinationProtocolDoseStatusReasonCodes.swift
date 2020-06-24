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
 The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of
 or contains concepts to support the medication process, in particular the process and reasons for dispensing. This
 value set is provided as a suggestive example.
 
 URL: http://hl7.org/fhir/vaccination-protocol-dose-status-reason
 ValueSet: http://hl7.org/fhir/ValueSet/vaccination-protocol-dose-status-reason
 */
public enum VaccinationProtocolDoseStatusReasonCodes: String, FHIRPrimitiveType {
	
	/// advstorage
	case advstorage = "advstorage"
	
	/// coldchbrk
	case coldchbrk = "coldchbrk"
	
	/// explot
	case explot = "explot"
	
	/// outsidesched
	case outsidesched = "outsidesched"
	
	/// prodrecall
	case prodrecall = "prodrecall"
}
