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
 Types of security services used with FHIR.
 
 URL: http://terminology.hl7.org/CodeSystem/restful-security-service
 ValueSet: http://hl7.org/fhir/ValueSet/restful-security-service
 */
public enum RestfulSecurityService: String, FHIRPrimitiveType {
	
	/// Microsoft NTLM Authentication.
	case NTLM
	
	/// Basic authentication defined in HTTP specification.
	case basic = "Basic"
	
	/// SSL where client must have a certificate registered with the server.
	case certificates = "Certificates"
	
	/// see http://www.ietf.org/rfc/rfc4120.txt.
	case kerberos = "Kerberos"
	
	/// OAuth (unspecified version see oauth.net).
	case oAuth = "OAuth"
	
	/// OAuth2 using SMART-on-FHIR profile (see http://docs.smarthealthit.org/).
	case sMARTOnFHIR = "SMART-on-FHIR"
}
