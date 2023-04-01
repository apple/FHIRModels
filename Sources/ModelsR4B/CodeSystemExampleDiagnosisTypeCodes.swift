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
 This value set includes example Diagnosis Type codes.
 
 URL: http://terminology.hl7.org/CodeSystem/ex-diagnosistype
 */
public enum ExampleDiagnosisTypeCodes: String, FHIRPrimitiveType {
	
	/// The diagnosis given as the reason why the patient was admitted to the hospital.
	case admitting
	
	/// A diagnosis made on the basis of medical signs and patient-reported symptoms, rather than diagnostic tests.
	case clinical
	
	/// One of a set of the possible diagnoses that could be connected to the signs, symptoms, and lab findings.
	case differential
	
	/// The diagnosis given when the patient is discharged from the hospital.
	case discharge
	
	/// A diagnosis based significantly on laboratory reports or test results, rather than the physical examination of
	/// the patient.
	case laboratory
	
	/// A diagnosis which identifies people's responses to situations in their lives, such as a readiness to change or a
	/// willingness to accept assistance.
	case nursing
	
	/// A diagnosis determined prior to birth.
	case prenatal
	
	/// The single medical diagnosis that is most relevant to the patient's chief complaint or need for treatment.
	case principal
	
	/// A diagnosis based primarily on the results from medical imaging studies.
	case radiology
	
	/// A diagnosis determined using telemedicine techniques.
	case remote
	
	/// The labeling of an illness in a specific historical event using modern knowledge, methods and disease
	/// classifications.
	case retrospective
	
	/// A diagnosis determined by the patient.
	case selfCase = "self"
}
