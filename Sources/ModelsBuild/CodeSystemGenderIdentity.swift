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
 This example value set defines a set of codes that can be used to indicate a patient's gender identity.
 
 URL: http://hl7.org/fhir/gender-identity
 */
public enum GenderIdentity: String, FHIRPrimitiveType {
	
	/// the patient identifies as transgender male-to-female
	case transgenderFemale = "transgender-female"
	
	/// the patient identifies as transgender female-to-male
	case transgenderMale = "transgender-male"
	
	/// the patient identifies with neither/both female and male
	case nonBinary = "non-binary"
	
	/// the patient identifies as male
	case male = "male"
	
	/// the patient identifies as female
	case female = "female"
	
	/// other gender identity
	case other = "other"
	
	/// the patient does not wish to disclose his gender identity
	case nonDisclose = "non-disclose"
}
