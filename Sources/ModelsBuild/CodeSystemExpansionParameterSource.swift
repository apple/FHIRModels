//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.6.0-048af26
//  Copyright 2022 Apple Inc.
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
 None
 
 URL: http://hl7.org/fhir/expansion-parameter-source
 */
public enum ExpansionParameterSource: String, FHIRPrimitiveType {
	
	/// The parameter was added from one the code systems used in the $expand operation.
	case codesystem
	
	/// The parameter was supplied by the client in the $expand request.
	case input
	
	/// The parameter was added by the expansion engine on the server.
	case server
}
