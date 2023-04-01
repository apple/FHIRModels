//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.3.0
//  Copyright 2023 Apple Inc.
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
 This code system supports describing the source of the data when the report of the immunization event is not based on
 information from the person, entity or organization who administered the vaccine.
 
 URL: http://terminology.hl7.org/CodeSystem/immunization-origin
 */
public enum ImmunizationEventOrigin: String, FHIRPrimitiveType {
	
	/// The data for the immunization event originated with an immunization information system (IIS) or registry
	/// operating within the jurisdiction.
	case jurisdiction
	
	/// The data for the immunization event originated with another provider.
	case provider
	
	/// The data for the immunization event originated from the recollection of the patient or parent/guardian of the
	/// patient.
	case recall
	
	/// The data for the immunization event originated with a written record for the patient.
	case record
	
	/// The data for the immunization event originated with a school record for the patient.
	case school
}
