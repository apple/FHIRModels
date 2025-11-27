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
 This value set includes simple codes for format defined for CapabilityStatement.format.
 
 URL: http://hl7.org/fhir/simple-format-codes
 */
public enum SimpleFormatCodes: String, FHIRPrimitiveType {
	
	/// The JSON format described by the FHIR specification. The formal Mime Type is application/fhir+json
	case json
	
	/// The RDF format described by the FHIR specification. The formal Mime Type is application/fhir+turtle
	case ttl
	
	/// The XML format described by the FHIR specification. The formal Mime Type is application/fhir+xml
	case xml
}
