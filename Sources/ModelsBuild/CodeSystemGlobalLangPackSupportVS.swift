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
 How a server supports global language packs
 
 URL: http://hl7.org/fhir/global-langpack-support
 ValueSet: http://hl7.org/fhir/ValueSet/global-langpack-support
 */
public enum GlobalLangPackSupportVS: String, FHIRPrimitiveType {
	
	/// The server supports language packs, but only when the value set asks for them, or they are requested explicitly
	/// by parameter.
	case explicit
	
	/// Language Packs marked as 'global language packs' are automatically in scope when the relevant language is
	/// requested.
	case implicit
	
	/// Language Packs are not supported at all
	case notSupported = "not-supported"
}
