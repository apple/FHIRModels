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
 Identifies the purpose for this identifier, if known .
 
 URL: http://hl7.org/fhir/identifier-use
 ValueSet: http://hl7.org/fhir/ValueSet/identifier-use
 */
public enum IdentifierUse: String, FHIRPrimitiveType {
	
	/// The identifier recommended for display and use in real-world interactions.
	case usual = "usual"
	
	/// The identifier considered to be most trusted for the identification of this item.
	case official = "official"
	
	/// A temporary identifier.
	case temp = "temp"
	
	/// An identifier that was assigned in secondary use - it serves to identify the object in a relative context, but
	/// cannot be consistently assigned to the same object again in a different context.
	case secondary = "secondary"
}
