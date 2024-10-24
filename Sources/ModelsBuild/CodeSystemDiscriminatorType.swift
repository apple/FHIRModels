//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 6.0.0-ballot2
//  Copyright 2024 Apple Inc.
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
 How an element value is interpreted when discrimination is evaluated.
 
 URL: http://hl7.org/fhir/discriminator-type
 ValueSet: http://hl7.org/fhir/ValueSet/discriminator-type
 */
public enum DiscriminatorType: String, FHIRPrimitiveType {
	
	/// The slices are differentiated by the presence or absence of the nominated element. There SHALL be no more than
	/// two slices. The slices are differentiated by the fact that one must have a max of 0 and the other must have a
	/// min of 1 (or more).  The order in which the slices are declared doesn't matter.
	case exists
	
	/// The slices have different values in the nominated element, as determined by the applicable fixed value, pattern,
	/// or required ValueSet binding. This has the same meaning as 'value' and is deprecated.
	case pattern
	
	/// The slices are differentiated by their index. This is only possible if all but the last slice have min=max
	/// cardinality, and the (optional) last slice contains other undifferentiated elements.
	case position
	
	/// The slices are differentiated by conformance of the nominated element to a specified profile. Note that if the
	/// path specifies .resolve() then the profile is the target profile on the reference. In this case, validation by
	/// the possible profiles is required to differentiate the slices.
	case profile
	
	/// The slices are differentiated by type of the nominated element.
	case type
	
	/// The slices have different values in the nominated element, as determined by the applicable fixed value, pattern,
	/// or required ValueSet binding.
	case value
}
