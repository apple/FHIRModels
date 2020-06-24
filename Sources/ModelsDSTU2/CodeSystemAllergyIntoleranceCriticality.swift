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
 Estimate of the potential clinical harm, or seriousness, of a reaction to an identified Substance.
 
 URL: http://hl7.org/fhir/allergy-intolerance-criticality
 ValueSet: http://hl7.org/fhir/ValueSet/allergy-intolerance-criticality
 */
public enum AllergyIntoleranceCriticality: String, FHIRPrimitiveType {
	
	/// The potential clinical impact of a future reaction is estimated as low risk: exposure to substance is unlikely
	/// to result in a life threatening or organ system threatening outcome. Future exposure to the Substance is
	/// considered a relative contra-indication.
	case CRITL = "CRITL"
	
	/// The potential clinical impact of a future reaction is estimated as high risk: exposure to substance may result
	/// in a life threatening or organ system threatening outcome. Future exposure to the Substance may be considered an
	/// absolute contra-indication.
	case CRITH = "CRITH"
	
	/// Unable to assess the potential clinical impact with the information available.
	case CRITU = "CRITU"
}
