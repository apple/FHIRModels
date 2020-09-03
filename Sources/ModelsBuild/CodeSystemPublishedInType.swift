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
 The type of publication such as book, database, or journal.
 
 URL: http://terminology.hl7.org/CodeSystem/published-in-type
 ValueSet: http://hl7.org/fhir/ValueSet/published-in-type
 */
public enum PublishedInType: String, FHIRPrimitiveType {
	
	/// A structured file of information or a set of logically related data stored and retrieved using computer-based
	/// means.
	case D019991 = "D019991"
	
	/// Non-periodical written or printed works consisting of sheets of pages fastened or bound together within covers.
	case D001877 = "D001877"
	
	/// Works consisting of organized collections of data, which have been stored permanently in a formalized manner
	/// suitable for communication, interpretation, or processing.
	case D064886 = "D064886"
}
