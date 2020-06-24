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
 A set of flags that defines how references are supported.
 
 URL: http://hl7.org/fhir/reference-handling-policy
 ValueSet: http://hl7.org/fhir/ValueSet/reference-handling-policy
 */
public enum ReferenceHandlingPolicy: String, FHIRPrimitiveType {
	
	/// The server supports and populates Literal references (i.e. using Reference.reference) where they are known (this
	/// code does not guarantee that all references are literal; see 'enforced').
	case literal = "literal"
	
	/// The server allows logical references (i.e. using Reference.identifier).
	case logical = "logical"
	
	/// The server will attempt to resolve logical references to literal references - i.e. converting
	/// Reference.identifier to Reference.reference (if resolution fails, the server may still accept resources; see
	/// logical).
	case resolves = "resolves"
	
	/// The server enforces that references have integrity - e.g. it ensures that references can always be resolved.
	/// This is typically the case for clinical record systems, but often not the case for middleware/proxy systems.
	case enforced = "enforced"
	
	/// The server does not support references that point to other servers.
	case local = "local"
}
