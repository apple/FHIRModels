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
 Indicates whether a resource instance represents a specific location or a class of locations.
 
 URL: http://hl7.org/fhir/location-mode
 ValueSet: http://hl7.org/fhir/ValueSet/location-mode
 */
public enum LocationMode: String, FHIRPrimitiveType {
	
	/// The Location resource represents a specific instance of a location (e.g. Operating Theatre 1A).
	case instance = "instance"
	
	/// The Location represents a class of locations (e.g. Any Operating Theatre) although this class of locations could
	/// be constrained within a specific boundary (such as organization, or parent location, address etc.).
	case kind = "kind"
}
