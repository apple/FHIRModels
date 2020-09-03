//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.5.0-a621ed4bdc
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
 How slices are interpreted when evaluating an instance.
 
 URL: http://hl7.org/fhir/resource-slicing-rules
 ValueSet: http://hl7.org/fhir/ValueSet/resource-slicing-rules
 */
public enum SlicingRules: String, FHIRPrimitiveType {
	
	/// No additional content is allowed other than that described by the slices in this profile.
	case closed = "closed"
	
	/// Additional content is allowed anywhere in the list.
	case open = "open"
	
	/// Additional content is allowed, but only at the end of the list. Note that using this requires that the slices be
	/// ordered, which makes it hard to share uses. This should only be done where absolutely required.
	case openAtEnd = "openAtEnd"
}
