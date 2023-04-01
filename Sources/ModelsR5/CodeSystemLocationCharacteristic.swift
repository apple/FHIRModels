//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 5.0.0
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
 Example Set of Location Characteristics.
 
 URL: http://hl7.org/fhir/location-characteristic
 ValueSet: http://hl7.org/fhir/ValueSet/location-characteristic
 */
public enum LocationCharacteristic: String, FHIRPrimitiveType {
	
	/// The location is or has an intensive care unit
	case hasIcu = "has-icu"
	
	/// The location is or has an isolation ward
	case hasIsoWard = "has-iso-ward"
	
	/// The location has negative pressure rooms available
	case hasNegPress = "has-neg-press"
	
	/// The location has oxygen and nitrogen services available
	case hasOxyNitro = "has-oxy-nitro"
	
	/// The location has translation services available
	case hasTranslation = "has-translation"
	
	/// The location is accessible to thosre requiring wheelchair access
	case wheelchair
}
