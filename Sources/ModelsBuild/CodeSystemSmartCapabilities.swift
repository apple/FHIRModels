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
 Codes that define what the server is capable of.
 
 URL: http://terminology.hl7.org/CodeSystem/smart-capabilities
 ValueSet: http://hl7.org/fhir/ValueSet/smart-capabilities
 */
public enum SmartCapabilities: String, FHIRPrimitiveType {
	
	/// support for SMART’s EHR Launch mode.
	case launchEhr = "launch-ehr"
	
	/// support for SMART’s Standalone Launch mode.
	case launchStandalone = "launch-standalone"
	
	/// support for SMART’s public client profile (no client authentication).
	case clientPublic = "client-public"
	
	/// support for SMART’s confidential client profile (symmetric client secret authentication).
	case clientConfidentialSymmetric = "client-confidential-symmetric"
	
	/// support for SMART’s OpenID Connect profile.
	case ssoOpenidConnect = "sso-openid-connect"
	
	/// support for “need patient banner” launch context (conveyed via need_patient_banner token parameter).
	case contextPassthroughBanner = "context-passthrough-banner"
	
	/// support for “SMART style URL” launch context (conveyed via smart_style_url token parameter).
	case contextPassthroughStyle = "context-passthrough-style"
	
	/// support for patient-level launch context (requested by launch/patient scope, conveyed via patient token
	/// parameter).
	case contextEhrPatient = "context-ehr-patient"
	
	/// support for encounter-level launch context (requested by launch/encounter scope, conveyed via encounter token
	/// parameter).
	case contextEhrEncounter = "context-ehr-encounter"
	
	/// support for patient-level launch context (requested by launch/patient scope, conveyed via patient token
	/// parameter).
	case contextStandalonePatient = "context-standalone-patient"
	
	/// support for encounter-level launch context (requested by launch/encounter scope, conveyed via encounter token
	/// parameter).
	case contextStandaloneEncounter = "context-standalone-encounter"
	
	/// support for refresh tokens (requested by offline_access scope).
	case permissionOffline = "permission-offline"
	
	/// support for patient-level scopes (e.g. patient/Observation.read).
	case permissionPatient = "permission-patient"
	
	/// support for user-level scopes (e.g. user/Appointment.read).
	case permissionUser = "permission-user"
}
