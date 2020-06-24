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
 Different measurement principle supported by the device.
 
 URL: http://hl7.org/fhir/measurement-principle
 ValueSet: http://hl7.org/fhir/ValueSet/measurement-principle
 */
public enum MeasmntPrinciple: String, FHIRPrimitiveType {
	
	/// Measurement principle isn't in the list.
	case other = "other"
	
	/// Measurement is done using the chemical principle.
	case chemical = "chemical"
	
	/// Measurement is done using the electrical principle.
	case electrical = "electrical"
	
	/// Measurement is done using the impedance principle.
	case impedance = "impedance"
	
	/// Measurement is done using the nuclear principle.
	case nuclear = "nuclear"
	
	/// Measurement is done using the optical principle.
	case optical = "optical"
	
	/// Measurement is done using the thermal principle.
	case thermal = "thermal"
	
	/// Measurement is done using the biological principle.
	case biological = "biological"
	
	/// Measurement is done using the mechanical principle.
	case mechanical = "mechanical"
	
	/// Measurement is done using the acoustical principle.
	case acoustical = "acoustical"
	
	/// Measurement is done using the manual principle.
	case manual = "manual"
}
