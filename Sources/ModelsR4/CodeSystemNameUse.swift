//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.0.1-9346c8cc45
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
 The use of a human name.
 
 URL: http://hl7.org/fhir/name-use
 ValueSet: http://hl7.org/fhir/ValueSet/name-use
 */
public enum NameUse: String, FHIRPrimitiveType {
	
	/// Known as/conventional/the one you normally use.
	case usual = "usual"
	
	/// The formal name as registered in an official (government) registry, but which name might not be commonly used.
	/// May be called "legal name".
	case official = "official"
	
	/// A temporary name. Name.period can provide more detailed information. This may also be used for temporary names
	/// assigned at birth or in emergency situations.
	case temp = "temp"
	
	/// A name that is used to address the person in an informal manner, but is not part of their formal or usual name.
	case nickname = "nickname"
	
	/// Anonymous assigned name, alias, or pseudonym (used to protect a person's identity for privacy reasons).
	case anonymous = "anonymous"
	
	/// This name is no longer in use (or was never correct, but retained for records).
	case old = "old"
	
	/// A name used prior to changing name because of marriage. This name use is for use by applications that collect
	/// and store names that were used prior to a marriage. Marriage naming customs vary greatly around the world, and
	/// are constantly changing. This term is not gender specific. The use of this term does not imply any particular
	/// history for a person's name.
	case maiden = "maiden"
}
