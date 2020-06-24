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
 Attested information may be validated by process that are manual or automated. For automated processes it may
 accomplished by the system of record reaching out through another system's API or information may be sent to the system
 of record. This value set defines a set of codes to describing the process, the how, a resource or data element is
 validated.
 
 URL: http://terminology.hl7.org/CodeSystem/verificationresult-communication-method
 ValueSet: http://hl7.org/fhir/ValueSet/verificationresult-communication-method
 */
public enum VerificationresultCommunicationMethod: String, FHIRPrimitiveType {
	
	/// The information is submitted/retrieved manually (e.g. by phone, fax, paper-based)
	case manual = "manual"
	
	/// The information is submitted/retrieved via a portal
	case portal = "portal"
	
	/// The information is retrieved (i.e. pulled) from a source (e.g. over an API)
	case pull = "pull"
	
	/// The information is sent (i.e. pushed) from a source (e.g. over an API, asynchronously, secure messaging)
	case push = "push"
}
