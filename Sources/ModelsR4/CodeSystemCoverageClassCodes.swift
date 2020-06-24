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
 This value set includes Coverage Class codes.
 
 URL: http://terminology.hl7.org/CodeSystem/coverage-class
 ValueSet: http://hl7.org/fhir/ValueSet/coverage-class
 */
public enum CoverageClassCodes: String, FHIRPrimitiveType {
	
	/// An employee group
	case group = "group"
	
	/// A sub-group of an employee group
	case subgroup = "subgroup"
	
	/// A specific suite of benefits.
	case plan = "plan"
	
	/// A subset of a specific suite of benefits.
	case subplan = "subplan"
	
	/// A class of benefits.
	case `class` = "class"
	
	/// A subset of a class of benefits.
	case subclass = "subclass"
	
	/// A sequence number associated with a short-term continuance of the coverage.
	case sequence = "sequence"
	
	/// Pharmacy benefit manager's Business Identification Number.
	case rxbin = "rxbin"
	
	/// A Pharmacy Benefit Manager specified Processor Control Number.
	case rxpcn = "rxpcn"
	
	/// A Pharmacy Benefit Manager specified Member ID.
	case rxid = "rxid"
	
	/// A Pharmacy Benefit Manager specified Group number.
	case rxgroup = "rxgroup"
}
