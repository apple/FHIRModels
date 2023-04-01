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
 Detailed information about the type of the image - its kind, purpose, or the kind of equipment used to generate it.
 
 URL: http://terminology.hl7.org/CodeSystem/media-modality
 */
public enum MediaSubType: String, FHIRPrimitiveType {
	
	/// A diagram. Often used in diagnostic reports
	case diagram
	
	/// A face scan used for identification purposes
	case face
	
	/// A digital record of a fax document
	case fax
	
	/// A finger print scan used for identification purposes
	case fingerprint
	
	/// An iris scan used for identification purposes
	case iris
	
	/// A palm scan used for identification purposes
	case palm
	
	/// A retinal image used for identification purposes
	case retina
	
	/// A digital scan of a document. This is reserved for when there is not enough metadata to create a document
	/// reference
	case scan
}
