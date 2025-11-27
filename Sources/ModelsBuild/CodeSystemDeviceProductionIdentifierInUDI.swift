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
 The production identifier(s) that are expected to appear in the UDI carrier.
 
 URL: http://hl7.org/fhir/device-productidentifierinudi
 */
public enum DeviceProductionIdentifierInUDI: String, FHIRPrimitiveType {
	
	/// The label includes the biological source identifier.
	case biologicalSource = "biological-source"
	
	/// The label includes the expiration date.
	case expirationDate = "expiration-date"
	
	/// The label includes the lot number.
	case lotNumber = "lot-number"
	
	/// The label includes the manufacture date.
	case manufacturedDate = "manufactured-date"
	
	/// The label includes the serial number.
	case serialNumber = "serial-number"
	
	/// The label includes the software version.
	case softwareVersion = "software-version"
}
