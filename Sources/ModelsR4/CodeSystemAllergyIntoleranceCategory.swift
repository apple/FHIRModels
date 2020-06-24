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
 Category of an identified substance associated with allergies or intolerances.
 
 URL: http://hl7.org/fhir/allergy-intolerance-category
 ValueSet: http://hl7.org/fhir/ValueSet/allergy-intolerance-category
 */
public enum AllergyIntoleranceCategory: String, FHIRPrimitiveType {
	
	/// Any substance consumed to provide nutritional support for the body.
	case food = "food"
	
	/// Substances administered to achieve a physiological effect.
	case medication = "medication"
	
	/// Any substances that are encountered in the environment, including any substance not already classified as food,
	/// medication, or biologic.
	case environment = "environment"
	
	/// A preparation that is synthesized from living organisms or their products, especially a human or animal protein,
	/// such as a hormone or antitoxin, that is used as a diagnostic, preventive, or therapeutic agent. Examples of
	/// biologic medications include: vaccines; allergenic extracts, which are used for both diagnosis and treatment
	/// (for example, allergy shots); gene therapies; cellular therapies.  There are other biologic products, such as
	/// tissues, which are not typically associated with allergies.
	case biologic = "biologic"
}
