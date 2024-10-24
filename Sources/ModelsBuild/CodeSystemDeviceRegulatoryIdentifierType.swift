//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 6.0.0-ballot2
//  Copyright 2024 Apple Inc.
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
 The type of regulatory identifier.
 
 URL: http://hl7.org/fhir/devicedefinition-regulatory-identifier-type
 */
public enum DeviceRegulatoryIdentifierType: String, FHIRPrimitiveType {
	
	/// EUDAMED's basic UDI-DI identifier.
	case basic
	
	/// The identifier is a license number.
	case license
	
	/// EUDAMED's master UDI-DI identifier.
	case master
}
