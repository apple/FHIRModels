//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 6.0.0-ballot3
//  Copyright 2025 Apple Inc.
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
 Codes indicating the reason why a service request is in its current status.
 
 URL: http://hl7.org/fhir/CodeSystem/servicerequest-status-reason
 ValueSet: http://hl7.org/fhir/ValueSet/servicerequest-status-reason
 */
public enum ServiceRequestStatusReasonCodes: String, FHIRPrimitiveType {
	
	/// The service is no longer clinically necessary or relevant for the patient's care.
	case noLongerClinicallyNecessary = "no-longer-clinically-necessary"
	
	/// Pre-authorization or approval for the service was denied by the payer or authorization entity.
	case preApprovalDenied = "pre-approval-denied"
}
