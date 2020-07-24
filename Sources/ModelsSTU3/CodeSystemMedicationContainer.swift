//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 3.0.1.11917
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
 A coded concept defining the kind of container a medication package is packaged in
 
 URL: http://hl7.org/fhir/medication-package-form
 ValueSet: http://hl7.org/fhir/ValueSet/medication-package-form
 */
public enum MedicationContainer: String, FHIRPrimitiveType {
	
	/// A sealed glass capsule containing a liquid
	case ampoule = "ampoule"
	
	/// A container, typically made of glass or plastic and with a narrow neck, used for storing liquids.
	case bottle = "bottle"
	
	/// A container with a flat base and sides, typically square or rectangular and having a lid.
	case box = "box"
	
	/// A device of various configuration and composition used with a syringe for the application of anesthetic or other
	/// materials to a patient.
	case cartridge = "cartridge"
	
	/// A package intended to store pharmaceuticals.
	case container = "container"
	
	/// A long, hollow cylinder of metal, plastic, glass, etc., for holding medications, typically creams or ointments
	case tube = "tube"
	
	/// A dose of medicine prepared in an individual package for convenience, safety or monitoring.
	case unitdose = "unitdose"
	
	/// A small container, typically cylindrical and made of glass, used especially for holding liquid medications.
	case vial = "vial"
}
