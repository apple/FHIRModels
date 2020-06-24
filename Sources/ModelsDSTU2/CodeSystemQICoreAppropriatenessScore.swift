//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 1.0.2.7202
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
 The RAND scoring for appropriateness of the procedure.
 
 URL: http://hl7.org/fhir/appropriateness-score
 ValueSet: http://hl7.org/fhir/ValueSet/qicore-appropriateness-score
 */
public enum QICoreAppropriatenessScore: String, FHIRPrimitiveType {
	
	/// The procedure is extremely inappropriate
	case extremelyInappropriate = "extremely-inappropriate"
	
	/// The procedure is inappropriate
	case inappropriate = "inappropriate"
	
	/// The procedure is probably inappropriate
	case probablyInappropriate = "probably-inappropriate"
	
	/// The appropriateness of the procedure is uncertain, leaning towards inappropriate
	case uncertainInappropriate = "uncertain-inappropriate"
	
	/// The appropriateness of the procedure is uncertain
	case uncertain = "uncertain"
	
	/// The appropriateness of the procedure is uncertain, leaning towards appropriate
	case uncertainAppropriate = "uncertain-appropriate"
	
	/// The procedure is probably appropriate
	case probablyAppropriate = "probably-appropriate"
	
	/// The procedure is appropriate
	case appropriate = "appropriate"
	
	/// The procedure is extremely appropriate
	case extremelyAppropriate = "extremely-appropriate"
}
