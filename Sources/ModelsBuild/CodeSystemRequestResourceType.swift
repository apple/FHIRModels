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
 A list of all the request resource types defined in this version of the FHIR specification.
 
 URL: http://hl7.org/fhir/request-resource-types
 ValueSet: http://hl7.org/fhir/ValueSet/request-resource-types
 */
public enum RequestResourceType: String, FHIRPrimitiveType {
	
	/// A booking of a healthcare event among patient(s), practitioner(s), related person(s) and/or device(s) for a
	/// specific date/time. This may result in one or more Encounter(s).
	case appointment = "Appointment"
	
	/// A reply to an appointment request for a patient and/or practitioner(s), such as a confirmation or rejection.
	case appointmentResponse = "AppointmentResponse"
	
	/// Healthcare plan for patient or group.
	case carePlan = "CarePlan"
	
	/// Claim, Pre-determination or Pre-authorization.
	case claim = "Claim"
	
	/// A request for information to be sent to a receiver.
	case communicationRequest = "CommunicationRequest"
	
	/// Legal Agreement.
	case contract = "Contract"
	
	/// Medical device request.
	case deviceRequest = "DeviceRequest"
	
	/// Enrollment request.
	case enrollmentRequest = "EnrollmentRequest"
	
	/// Guidance or advice relating to an immunization.
	case immunizationRecommendation = "ImmunizationRecommendation"
	
	/// Ordering of medication for patient or group.
	case medicationRequest = "MedicationRequest"
	
	/// Diet, formula or nutritional supplement request.
	case nutritionOrder = "NutritionOrder"
	
	/// A record of a request for service such as diagnostic investigations, treatments, or operations to be performed.
	case serviceRequest = "ServiceRequest"
	
	/// Request for a medication, substance or device.
	case supplyRequest = "SupplyRequest"
	
	/// A task to be performed.
	case task = "Task"
	
	/// Prescription for vision correction products for a patient.
	case visionPrescription = "VisionPrescription"
}
