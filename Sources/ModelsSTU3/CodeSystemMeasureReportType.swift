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
 The type of the measure report
 
 URL: http://hl7.org/fhir/measure-report-type
 ValueSet: http://hl7.org/fhir/ValueSet/measure-report-type
 */
public enum MeasureReportType: String, FHIRPrimitiveType {
	
	/// An individual report that provides information on the performance for a given measure with respect to a single
	/// patient
	case individual = "individual"
	
	/// A patient list report that includes a listing of patients that satisfied each population criteria in the measure
	case patientList = "patient-list"
	
	/// A summary report that returns the number of patients in each population criteria for the measure
	case summary = "summary"
}
