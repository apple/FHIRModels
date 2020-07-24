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
 Identification of the underlying physiological mechanism for a Reaction Risk.
 
 URL: http://hl7.org/fhir/allergy-intolerance-type
 ValueSet: http://hl7.org/fhir/ValueSet/allergy-intolerance-type
 */
public enum AllergyIntoleranceType: String, FHIRPrimitiveType {
	
	/// A propensity for hypersensitivity reaction(s) to a substance.  These reactions are most typically type I
	/// hypersensitivity, plus other "allergy-like" reactions, including pseudoallergy.
	case allergy = "allergy"
	
	/// A propensity for adverse reactions to a substance that is not judged to be allergic or "allergy-like".  These
	/// reactions are typically (but not necessarily) non-immune.  They are to some degree idiosyncratic and/or
	/// individually specific (i.e. are not a reaction that is expected to occur with most or all patients given similar
	/// circumstances).
	case intolerance = "intolerance"
}
