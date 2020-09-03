//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.5.0-a621ed4bdc
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
 Types of resources that can be attached to catalog entries.
 
 URL: http://hl7.org/fhir/catalogentry-type
 ValueSet: http://hl7.org/fhir/ValueSet/catalogentry-type
 */
public enum CatalogEntryType: String, FHIRPrimitiveType {
	
	/// activityDefinition
	case activityDefinition = "ActivityDefinition"
	
	/// planDefinition
	case planDefinition = "PlanDefinition"
	
	/// specimenDefinition
	case specimenDefinition = "SpecimenDefinition"
	
	/// observationDefinition
	case observationDefinition = "ObservationDefinition"
	
	/// deviceDefinition
	case deviceDefinition = "DeviceDefinition"
	
	/// organization
	case organization = "Organization"
	
	/// practitioner
	case practitioner = "Practitioner"
	
	/// practitionerRole
	case practitionerRole = "PractitionerRole"
	
	/// healthcareService
	case healthcareService = "HealthcareService"
	
	/// medicationKnowledge
	case medicationKnowledge = "MedicationKnowledge"
	
	/// medication
	case medication = "Medication"
	
	/// substance
	case substance = "Substance"
	
	/// location
	case location = "Location"
}
