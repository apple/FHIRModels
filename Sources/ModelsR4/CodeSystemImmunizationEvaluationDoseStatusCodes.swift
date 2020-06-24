//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.0.1-9346c8cc45
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
 The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of
 or contains concepts to support describing the validity of a dose relative to a particular recommended schedule. This
 value set is provided as a suggestive example.
 
 URL: http://terminology.hl7.org/CodeSystem/immunization-evaluation-dose-status
 ValueSet: http://hl7.org/fhir/ValueSet/immunization-evaluation-dose-status
 */
public enum ImmunizationEvaluationDoseStatusCodes: String, FHIRPrimitiveType {
	
	/// The dose counts toward fulfilling a path to immunity for a patient, providing protection against the target
	/// disease.
	case valid = "valid"
	
	/// The dose does not count toward fulfilling a path to immunity for a patient.
	case notvalid = "notvalid"
}
