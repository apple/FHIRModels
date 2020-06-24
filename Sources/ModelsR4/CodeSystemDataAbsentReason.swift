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
 Used to specify why the normally expected content of the data element is missing.
 
 URL: http://terminology.hl7.org/CodeSystem/data-absent-reason
 ValueSet: http://hl7.org/fhir/ValueSet/data-absent-reason
 */
public enum DataAbsentReason: String, FHIRPrimitiveType {
	
	/// The value is expected to exist but is not known.
	case unknown = "unknown"
	
	/// The source was asked but does not know the value.
	case askedUnknown = "asked-unknown"
	
	/// There is reason to expect (from the workflow) that the value may become known.
	case tempUnknown = "temp-unknown"
	
	/// The workflow didn't lead to this value being known.
	case notAsked = "not-asked"
	
	/// The source was asked but declined to answer.
	case askedDeclined = "asked-declined"
	
	/// The information is not available due to security, privacy or related reasons.
	case masked = "masked"
	
	/// There is no proper value for this element (e.g. last menstrual period for a male).
	case notApplicable = "not-applicable"
	
	/// The source system wasn't capable of supporting this element.
	case unsupported = "unsupported"
	
	/// The content of the data is represented in the resource narrative.
	case asText = "as-text"
	
	/// Some system or workflow process error means that the information is not available.
	case error = "error"
	
	/// The numeric value is undefined or unrepresentable due to a floating point processing error.
	case notANumber = "not-a-number"
	
	/// The numeric value is excessively low and unrepresentable due to a floating point processing error.
	case negativeInfinity = "negative-infinity"
	
	/// The numeric value is excessively high and unrepresentable due to a floating point processing error.
	case positiveInfinity = "positive-infinity"
	
	/// The value is not available because the observation procedure (test, etc.) was not performed.
	case notPerformed = "not-performed"
	
	/// The value is not permitted in this context (e.g. due to profiles, or the base data types).
	case notPermitted = "not-permitted"
}
