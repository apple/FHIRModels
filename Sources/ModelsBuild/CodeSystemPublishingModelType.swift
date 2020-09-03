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
 To identify the medium/media in which the cited article is published, eg print, electronic or print-electronic.
 
 URL: http://terminology.hl7.org/CodeSystem/publishing-model-type
 ValueSet: http://hl7.org/fhir/ValueSet/publishing-model-type
 */
public enum PublishingModelType: String, FHIRPrimitiveType {
	
	/// Journal in print only (see https://www.nlm.nih.gov/bsd/licensee/elements_descriptions.html#article).
	case print = "Print"
	
	/// Journal in print and electronic formats (see
	/// https://www.nlm.nih.gov/bsd/licensee/elements_descriptions.html#article).
	case printElectronic = "Print-Electronic"
	
	/// Journal in electronic format only (see https://www.nlm.nih.gov/bsd/licensee/elements_descriptions.html#article).
	case electronic = "Electronic"
	
	/// Electronic-only journal that publishes individual articles then later collects with issue date (see
	/// https://www.nlm.nih.gov/bsd/licensee/elements_descriptions.html#article).
	case eletronicECollection = "Eletronic-eCollection"
}
