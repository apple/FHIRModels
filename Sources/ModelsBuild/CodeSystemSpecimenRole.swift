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
 Codes providing the combined status of the specimen.
 
 URL: http://hl7.org/fhir/specimen-role
 ValueSet: http://hl7.org/fhir/ValueSet/specimen-role
 */
public enum SpecimenRole: String, FHIRPrimitiveType {
	
	/// Used to test the validity of the measurement process, where the composition of the sample is unknown except to
	/// the person submitting it.
	case B = "b"
	
	/// Used for initial setting of calibration of the instrument.
	case C = "c"
	
	/// Used with manufactured reference providing signals that simulate QC results.
	case E = "e"
	
	/// Specimen used for testing proficiency of the organization performing the testing (Filler).
	case F = "f"
	
	/// Specimen used for testing Operator Proficiency.
	case O = "o"
	
	/// Used for any patient sample.
	case P = "p"
	
	/// Used when specimen is the control specimen (either positive or negative).
	case Q = "q"
	
	/// Used when a patient sample is re-run as a control for a repeat test.
	case R = "r"
	
	/// Used for periodic calibration checks.
	case V = "v"
}
