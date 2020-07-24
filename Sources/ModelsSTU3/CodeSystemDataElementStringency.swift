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
 Indicates the degree of precision of the data element definition.
 
 URL: http://hl7.org/fhir/dataelement-stringency
 ValueSet: http://hl7.org/fhir/ValueSet/dataelement-stringency
 */
public enum DataElementStringency: String, FHIRPrimitiveType {
	
	/// The data element is sufficiently well-constrained that multiple pieces of data captured according to the
	/// constraints of the data element will be comparable (though in some cases, a degree of automated
	/// conversion/normalization may be required).
	case comparable = "comparable"
	
	/// The data element is fully specified down to a single value set, single unit of measure, single data type, etc.
	/// Multiple pieces of data associated with this data element are fully comparable.
	case fullySpecified = "fully-specified"
	
	/// The data element allows multiple units of measure having equivalent meaning; e.g. "cc" (cubic centimeter) and
	/// "mL" (milliliter).
	case equivalent = "equivalent"
	
	/// The data element allows multiple units of measure that are convertable between each other (e.g. inches and
	/// centimeters) and/or allows data to be captured in multiple value sets for which a known mapping exists allowing
	/// conversion of meaning.
	case convertable = "convertable"
	
	/// A convertable data element where unit conversions are different only by a power of 10; e.g. g, mg, kg.
	case scaleable = "scaleable"
	
	/// The data element is unconstrained in units, choice of data types and/or choice of vocabulary such that automated
	/// comparison of data captured using the data element is not possible.
	case flexible = "flexible"
}
