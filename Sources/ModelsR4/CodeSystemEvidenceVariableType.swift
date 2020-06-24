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
 The possible types of variables for exposures or outcomes (E.g. Dichotomous, Continuous, Descriptive).
 
 URL: http://hl7.org/fhir/variable-type
 ValueSet: http://hl7.org/fhir/ValueSet/variable-type
 */
public enum EvidenceVariableType: String, FHIRPrimitiveType {
	
	/// The variable is dichotomous, such as present or absent.
	case dichotomous = "dichotomous"
	
	/// The variable is a continuous result such as a quantity.
	case continuous = "continuous"
	
	/// The variable is described narratively rather than quantitatively.
	case descriptive = "descriptive"
}
