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
 Overall categorization of the event, e.g. product-related or situational.
 
 URL: http://terminology.hl7.org/CodeSystem/adverse-event-category
 ValueSet: http://hl7.org/fhir/ValueSet/adverse-event-category
 */
public enum AdverseEventCategory: String, FHIRPrimitiveType {
	
	/// The adverse event pertains to an event involving the wrong patient, who was not the intended subject.
	case wrongPatient = "wrong-patient"
	
	/// The adverse event pertains to a procedure mishap.
	case procedureMishap = "procedure-mishap"
	
	/// The adverse event pertains to a medication mishap, such as wrong dose, route, rate, or duration of
	/// administration.
	case medicationMishap = "medication-mishap"
	
	/// The adverse event pertains to a device.
	case device = "device"
	
	/// The adverse event pertains to an unsafe physical environment.
	case unsafePhysicalEnvironment = "unsafe-physical-environment"
	
	/// The adverse event pertains to a hospital acquired infection.
	case hospitalAquiredInfection = "hospital-aquired-infection"
	
	/// The adverse event pertains to the wrong body site.
	case wrongBodySite = "wrong-body-site"
}
