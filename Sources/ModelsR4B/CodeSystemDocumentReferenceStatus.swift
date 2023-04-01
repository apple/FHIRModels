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
 The status of the document reference.
 
 URL: http://hl7.org/fhir/document-reference-status
 ValueSet: http://hl7.org/fhir/ValueSet/document-reference-status
 */
public enum DocumentReferenceStatus: String, FHIRPrimitiveType {
	
	/// This is the current reference for this document.
	case current
	
	/// This reference was created in error.
	case enteredInError = "entered-in-error"
	
	/// This reference has been superseded by another reference.
	case superseded
}
