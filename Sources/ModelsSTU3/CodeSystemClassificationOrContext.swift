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
 Identifies whether a useContext represents a context or classification for the element
 
 URL: http://hl7.org/fhir/classification-or-context
 ValueSet: http://hl7.org/fhir/ValueSet/classification-or-context
 */
public enum ClassificationOrContext: String, FHIRPrimitiveType {
	
	/// Indicates the useContext is a classification - e.g. Administrative, financial, etc.
	case classification = "classification"
	
	/// Indicates the useContext is a context - a domain of use - e.g. Particular country, organization or system
	case context = "context"
}
