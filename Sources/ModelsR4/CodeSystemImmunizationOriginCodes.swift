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
 The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of
 or contains concepts to support describing the source of the data when the report of the immunization event is not
 based on information from the person, entity or organization who administered the vaccine. This value set is provided
 as a suggestive example.
 
 URL: http://terminology.hl7.org/CodeSystem/immunization-origin
 */
public enum ImmunizationOriginCodes: String, FHIRPrimitiveType {
	
	/// The data for the immunization event originated with another provider.
	case provider = "provider"
	
	/// The data for the immunization event originated with a written record for the patient.
	case record = "record"
	
	/// The data for the immunization event originated from the recollection of the patient or parent/guardian of the
	/// patient.
	case recall = "recall"
	
	/// The data for the immunization event originated with a school record for the patient.
	case school = "school"
	
	/// The data for the immunization event originated with an immunization information system (IIS) or registry
	/// operating within the jurisdiction.
	case jurisdiction = "jurisdiction"
}
