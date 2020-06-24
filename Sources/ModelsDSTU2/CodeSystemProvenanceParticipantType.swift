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
 The type of a provenance participant. Use either a defined FHIR resource type, or, if the reference is not to a
 resource, one of the defined codes, or some other code if none of the defined codes are appropriate.
 
 URL: http://hl7.org/fhir/provenance-participant-type
 ValueSet: http://hl7.org/fhir/ValueSet/provenance-agent-type
 */
public enum ProvenanceParticipantType: String, FHIRPrimitiveType {
	
	/// The participant is a person acting on their on behalf or on behalf of the patient rather than as an practitioner
	/// for an organization.  I.e. "not a healthcare provider".
	case person = "person"
	
	/// The participant is a practitioner, a person (provider) who is directly or indirectly involved in the
	/// provisioning of healthcare.
	case practitioner = "practitioner"
	
	/// The participant is an organization.
	case organization = "organization"
	
	/// The participant is a software application including services, algorithms, etc.
	case software = "software"
	
	/// The participant is the patient, a person or animal receiving care or other health-related services.
	case patient = "patient"
	
	/// The participant is a device, an instance of a manufactured thing that is used in the provision of healthcare
	/// without being substantially changed through that activity. The device may be a machine, an insert, a computer,
	/// an application, etc. This includes durable (reusable) medical equipment as well as disposable equipment used for
	/// diagnostic, treatment, and research for healthcare and public health.
	case device = "device"
	
	/// The participant is a related person, a person that is involved in the care for a patient, but who is not the
	/// target of healthcare, nor has a formal responsibility in the care process.
	case relatedPerson = "related-person"
}
