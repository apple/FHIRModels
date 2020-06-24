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
 Types of combining results from a body of evidence (eg. summary data meta-analysis).
 
 URL: http://terminology.hl7.org/CodeSystem/synthesis-type
 ValueSet: http://hl7.org/fhir/ValueSet/synthesis-type
 */
public enum SynthesisType: String, FHIRPrimitiveType {
	
	/// A meta-analysis of the summary data of estimates from individual studies or data sets.
	case stdMA = "std-MA"
	
	/// A meta-analysis of the individual participant data from individual studies or data sets.
	case IPDMA = "IPD-MA"
	
	/// An indirect meta-analysis derived from 2 or more direct comparisons in a network meta-analysis.
	case indirectNMA = "indirect-NMA"
	
	/// An composite meta-analysis derived from direct comparisons and indirect comparisons in a network meta-analysis.
	case combinedNMA = "combined-NMA"
	
	/// A range of results across a body of evidence.
	case range = "range"
	
	/// An approach describing a body of evidence by categorically classifying individual studies (eg 3 studies showed
	/// beneft and 2 studied found no effect).
	case classification = "classification"
}
