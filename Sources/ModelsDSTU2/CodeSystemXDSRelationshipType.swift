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
 The kind of relationship between two XDS documents.
 
 URL: http://hl7.org/fhir/xds-relationship-type
 ValueSet: http://hl7.org/fhir/ValueSet/xds-relationship-type
 */
public enum XDSRelationshipType: String, FHIRPrimitiveType {
	
	/// A separate XDS document that references a prior document, and may extend or alter the observations in the prior
	/// document.
	case APND = "APND"
	
	/// A new version of an existing document.
	case RPLC = "RPLC"
	
	/// A transformed document is derived by a machine translation from some other format.
	case XFRM = "XFRM"
	
	/// Both a XFRM and a RPLC relationship.
	case XFRM_RPLC = "XFRM_RPLC"
	
	/// This document signs the target document.
	case signs = "signs"
}
