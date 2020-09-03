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
 The meaning of the hierarchy of concepts in a code system.
 
 URL: http://hl7.org/fhir/codesystem-hierarchy-meaning
 ValueSet: http://hl7.org/fhir/ValueSet/codesystem-hierarchy-meaning
 */
public enum CodeSystemHierarchyMeaning: String, FHIRPrimitiveType {
	
	/// No particular relationship between the concepts can be assumed, except what can be determined by inspection of
	/// the definitions of the elements (possible reasons to use this: importing from a source where this is not
	/// defined, or where various parts of the hierarchy have different meanings).
	case groupedBy = "grouped-by"
	
	/// A hierarchy where the child concepts have an IS-A relationship with the parents - that is, all the properties of
	/// the parent are also true for its child concepts. Not that is-a is a property of the concepts, so additional
	/// subsumption relationships may be defined using properties or the [subsumes](extension-codesystem-subsumes.html)
	/// extension.
	case isA = "is-a"
	
	/// Child elements list the individual parts of a composite whole (e.g. body site).
	case partOf = "part-of"
	
	/// Child concepts in the hierarchy may have only one parent, and there is a presumption that the code system is a
	/// "closed world" meaning all things must be in the hierarchy. This results in concepts such as "not otherwise
	/// classified.".
	case classifiedWith = "classified-with"
}
