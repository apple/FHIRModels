//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.0.1-9346c8cc45
//  Copyright 2022 Apple Inc.
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
 This value set defines a set of codes that can be used to indicate the meaning/use of a reference range for a
 particular target population.
 
 URL: http://terminology.hl7.org/CodeSystem/referencerange-meaning
 ValueSet: http://hl7.org/fhir/ValueSet/referencerange-meaning
 */
public enum ObservationReferenceRangeMeaningCodes: String, FHIRPrimitiveType {
	
	/// General types of reference range.
	case type
	
	/// Values expected for a normal member of the relevant control population being measured. Typically each results
	/// producer such as a laboratory has specific normal ranges and they are usually defined as within two standard
	/// deviations from the mean and account for 95.45% of this population.
	case normal
	
	/// The range that is recommended by a relevant professional body.
	case recommended
	
	/// The range at which treatment would/should be considered.
	case treatment
	
	/// The optimal range for best therapeutic outcomes.
	case therapeutic
	
	/// The optimal range for best therapeutic outcomes for a specimen taken immediately before administration.
	case pre
	
	/// The optimal range for best therapeutic outcomes for a specimen taken immediately after administration.
	case post
	
	/// Endocrine related states that change the expected value.
	case endocrine
	
	/// An expected range in an individual prior to puberty.
	case prePuberty = "pre-puberty"
	
	/// An expected range in an individual during the follicular stage of the cycle.
	case follicular
	
	/// An expected range in an individual during the midcycle stage of the cycle.
	case midcycle
	
	/// An expected range in an individual during the luteal stage of the cycle.
	case luteal
	
	/// An expected range in an individual post-menopause.
	case postmenopausal
}
