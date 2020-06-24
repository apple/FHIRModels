//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 1.0.2.7202
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
 Code for a known / defined timing pattern.
 
 URL: http://hl7.org/fhir/timing-abbreviation
 ValueSet: http://hl7.org/fhir/ValueSet/timing-abbreviation
 */
public enum TimingAbbreviation: String, FHIRPrimitiveType {
	
	/// Every Day at institution specified times
	case QD = "QD"
	
	/// Every Other Day at institution specified times
	case QOD = "QOD"
	
	/// Every 4 hours at institution specified times
	case Q4H = "Q4H"
	
	/// Every 6 Hours  at institution specified times
	case Q6H = "Q6H"
}
