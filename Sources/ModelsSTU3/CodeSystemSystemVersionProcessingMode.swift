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
 How to manage the intersection between a fixed version in a value set, and a fixed version of the system in the
 expansion profile
 
 URL: http://hl7.org/fhir/system-version-processing-mode
 ValueSet: http://hl7.org/fhir/ValueSet/system-version-processing-mode
 */
public enum SystemVersionProcessingMode: String, FHIRPrimitiveType {
	
	/// Use this version of the code system if a value set doesn't specify a version
	case `default` = "default"
	
	/// Use this version of the code system. If a value set specifies a different version, the expansion operation
	/// should fail
	case check = "check"
	
	/// Use this version of the code system irrespective of which version is specified by a value set. Note that this
	/// has obvious safety issues, in that it may result in a value set expansion giving a different list of codes that
	/// is both wrong and unsafe, and implementers should only use this capability reluctantly. It primarily exists to
	/// deal with situations where specifications have fallen into decay as time passes. If a  version is override, the
	/// version used SHALL explicitly be represented in the expansion parameters
	case override = "override"
}
