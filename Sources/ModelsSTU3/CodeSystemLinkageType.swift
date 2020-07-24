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
 Used to distinguish different roles a resource can play within a set of linked resources
 
 URL: http://hl7.org/fhir/linkage-type
 ValueSet: http://hl7.org/fhir/ValueSet/linkage-type
 */
public enum LinkageType: String, FHIRPrimitiveType {
	
	/// The record represents the "source of truth" (from the perspective of this Linkage resource) for the underlying
	/// event/condition/etc.
	case source = "source"
	
	/// The record represents the alternative view of the underlying event/condition/etc.  The record may still be
	/// actively maintained, even though it is not considered to be the source of truth.
	case alternate = "alternate"
	
	/// The record represents an obsolete record of the underlyng event/condition/etc.  It is not expected to be
	/// actively maintained.
	case historical = "historical"
}
