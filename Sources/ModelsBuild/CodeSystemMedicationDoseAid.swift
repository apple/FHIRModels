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
 Medication dose aid
 
 URL: http://hl7.org/fhir/CodeSystem/medication-dose-aid
 ValueSet: http://hl7.org/fhir/ValueSet/medication-dose-aid
 */
public enum MedicationDoseAid: String, FHIRPrimitiveType {
	
	/// A type of packaging in which a medication is sealed in plastic, often with a cardboard backing.
	case blisterpack
	
	/// A box or tray that organizes mediations into separate compartments
	case dosette
	
	/// A small packet that contains medication for individual use.
	case sachets
}
