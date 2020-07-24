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
 How an extension context is interpreted.
 
 URL: http://hl7.org/fhir/extension-context
 ValueSet: http://hl7.org/fhir/ValueSet/extension-context
 */
public enum ExtensionContext: String, FHIRPrimitiveType {
	
	/// The context is all elements matching a particular resource element path.
	case resource = "resource"
	
	/// The context is all nodes matching a particular data type element path (root or repeating element) or all
	/// elements referencing a particular primitive data type (expressed as the datatype name).
	case datatype = "datatype"
	
	/// The context is a particular extension from a particular profile, a uri that identifies the extension definition.
	case `extension` = "extension"
}
