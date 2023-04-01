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
 This code system defines the methods by which entities participating in a validation process share information (e.g.
 submission/retrieval of attested information, or exchange of validated information).
 
 URL: http://hl7.org/fhir/verificationresult-communication-method
 */
public enum VerificationresultCommunicationMethod: String, FHIRPrimitiveType {
	
	/// The information is submitted/retrieved manually (e.g. by phone, fax, paper-based)
	case manual
	
	/// The information is submitted/retrieved via a portal
	case portal
	
	/// The information is retrieved (i.e. pulled) from a source (e.g. over an API)
	case pull
	
	/// The information is sent (i.e. pushed) from a source (e.g. over an API, asynchronously, secure messaging)
	case push
}
