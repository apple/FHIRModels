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
 This example value set defines a set of codes that can be used to indicate the physical form of the Location.
 
 URL: http://hl7.org/fhir/location-physical-type
 ValueSet: http://hl7.org/fhir/ValueSet/location-physical-type
 */
public enum LocationType: String, FHIRPrimitiveType {
	
	/// Any Building or structure. This may contain rooms, corridors, wings, etc. It may not have walls, or a roof, but
	/// is considered a defined/allocated space.
	case bu = "bu"
	
	/// A Wing within a Building, this often contains levels, rooms and corridors.
	case wi = "wi"
	
	/// A Level in a multi-level Building/Structure.
	case lvl = "lvl"
	
	/// Any corridor within a Building, that is not within.
	case co = "co"
	
	/// A space that is allocated as a room, it may have walls/roof etc., but does not require these.
	case ro = "ro"
	
	/// A space that is allocated for sleeping/laying on.
	case bd = "bd"
	
	/// A means of transportation.
	case ve = "ve"
	
	/// A residential dwelling. Usually used to reference a location that a person/patient may reside.
	case ho = "ho"
	
	/// A container that can store goods, equipment, medications or other items.
	case ca = "ca"
	
	/// A defined path to travel between 2 points that has a known name.
	case rd = "rd"
	
	/// A wide scope that covers a conceptual domain, such as a Nation (Country wide community or Federal Government -
	/// e.g. Ministry of Health),  Province or State (community or Government), Business (throughout the enterprise),
	/// Nation with a business scope of an agency (e.g. CDC, FDA etc.) or a Business segment (UK Pharmacy).
	case jdn = "jdn"
	
	/// A defined boundary, such as a state, region, country, county
	case area = "area"
}
