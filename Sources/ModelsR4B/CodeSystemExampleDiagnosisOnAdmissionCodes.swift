//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.3.0
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
 This value set includes example Diagnosis on admission codes.
 
 URL: http://terminology.hl7.org/CodeSystem/ex-diagnosis-on-admission
 */
public enum ExampleDiagnosisOnAdmissionCodes: String, FHIRPrimitiveType {
	
	/// Diagnosis was not present at time of inpatient admission.
	case N = "n"
	
	/// Documentation insufficient to determine if condition was present at the time of inpatient admission.
	case U = "u"
	
	/// Clinically undetermined. Provider unable to clinically determine whether the condition was present at the time
	/// of inpatient admission.
	case W = "w"
	
	/// Diagnosis was present at time of inpatient admission.
	case Y = "y"
}
