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
 The type of link between this patient resource and another patient resource.
 
 URL: http://hl7.org/fhir/link-type
 ValueSet: http://hl7.org/fhir/ValueSet/link-type
 */
public enum LinkType: String, FHIRPrimitiveType {
	
	/// The patient resource containing this link is in use and valid but not considered the main source of information
	/// about a patient. The link points forward to another patient resource that should be consulted to retrieve
	/// additional patient information.
	case refer
	
	/// The patient resource containing this link must no longer be used. The link points forward to another patient
	/// resource that must be used in lieu of the patient resource that contains this link.
	case replacedBy = "replaced-by"
	
	/// The patient resource containing this link is the current active patient record. The link points back to an
	/// inactive patient resource that has been merged into this resource, and should be consulted to retrieve
	/// additional referenced information.
	case replaces
	
	/// The patient resource containing this link is in use and valid, but points to another patient resource that is
	/// known to contain data about the same person. Data in this resource might overlap or contradict information found
	/// in the other patient resource. This link does not indicate any relative importance of the resources concerned,
	/// and both should be regarded as equally valid.
	case seealso
}
