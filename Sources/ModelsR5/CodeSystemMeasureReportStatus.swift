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
 The status of the measure report.
 
 URL: http://hl7.org/fhir/measure-report-status
 ValueSet: http://hl7.org/fhir/ValueSet/measure-report-status
 */
public enum MeasureReportStatus: String, FHIRPrimitiveType {
	
	/// The report is complete and ready for use.
	case complete
	
	/// An error occurred attempting to generate the report.
	case error
	
	/// The report is currently being generated.
	case pending
}
