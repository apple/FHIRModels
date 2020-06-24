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
 Code to classify the kind of observation in Observation.value[x]
 
 URL: http://hl7.org/fhir/obs-kind
 ValueSet: http://hl7.org/fhir/ValueSet/uslab-obs-kind
 */
public enum UslabObservationkind: String, FHIRPrimitiveType {
	
	/// The value is Observation.value[x] is an actual result from a laboratory test
	case result = "result"
	
	/// The value is Observation.value[x] is a response to laboratory Ask at order (AOE) questions
	case response = "response"
	
	/// The value is Observation.value[x] is some other unsolicited clnically relevant information.
	case information = "information"
}
