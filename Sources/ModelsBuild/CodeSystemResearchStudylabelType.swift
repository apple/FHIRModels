//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.6.0-048af26
//  Copyright 2022 Apple Inc.
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
 Codes that convey the type of label that is provided.
 
 URL: http://hl7.org/fhir/research-study-label-type
 ValueSet: http://hl7.org/fhir/ValueSet/research-study-label-type
 */
public enum ResearchStudylabelType: String, FHIRPrimitiveType {
	
	/// A name that is understandable to non-technical readers.
	case `public`
	
	/// A full name that is suitable for use in an academic or technical setting.
	case scientific
	
	///  A short form of the name - what is used in everyday conversation.
	case short
}
