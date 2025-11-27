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
 The category of the device.
 
 URL: http://hl7.org/fhir/device-category
 ValueSet: http://hl7.org/fhir/ValueSet/device-category
 */
public enum FHIRDeviceCategory: String, FHIRPrimitiveType {
	
	/// Device where the operation depends on a source of energy.
	case active
	
	/// Device communicates electronically to peer information systems or possibly another device.
	case communicating
	
	/// Equipment and supplies that provides therapeutic benefits to a patient.
	case dme
	
	/// Medical device intended for users in a non-medical setting.
	case homeUse = "home-use"
	
	/// A device that is placed into a surgically or naturally formed cavity of the human body.
	case implantable
	
	/// Tests done on samples such as blood or tissue that have been taken from the human body.
	case inVitro = "in-vitro"
	
	/// a class of communicating devices that are used by medical providers for various purposes (e.g., monitoring,
	/// delivering or measuring).
	case pointOfCare = "point-of-care"
	
	/// A device that healthcare providers can use to diagnose and treat one or more patients.
	case reusable
	
	/// A device use on one individual during a single procedure.
	case singleUse = "single-use"
	
	/// A device that may include a software component or consist exclusively of software e.g. data transformer or
	/// converter, clinical support algorithms, clinical apps
	case software
}
