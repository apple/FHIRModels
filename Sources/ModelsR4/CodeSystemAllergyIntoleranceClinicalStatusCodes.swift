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
 Preferred value set for AllergyIntolerance Clinical Status.
 
 URL: http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical
 ValueSet: http://hl7.org/fhir/ValueSet/allergyintolerance-clinical
 */
public enum AllergyIntoleranceClinicalStatusCodes: String, FHIRPrimitiveType {
	
	/// The subject is currently experiencing, or is at risk of, a reaction to the identified substance.
	case active = "active"
	
	/// The subject is no longer at risk of a reaction to the identified substance.
	case inactive = "inactive"
	
	/// A reaction to the identified substance has been clinically reassessed by testing or re-exposure and is
	/// considered no longer to be present. Re-exposure could be accidental, unplanned, or outside of any clinical
	/// setting.
	case resolved = "resolved"
}
