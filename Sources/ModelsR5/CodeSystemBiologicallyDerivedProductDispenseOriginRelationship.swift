//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 5.0.0
//  Copyright 2023 Apple Inc.
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
 Biologically derived product dispense - origin relationship
 
 URL: http://hl7.org/fhir/CodeSystem/biologicallyderivedproductdispense-origin-relationship
 ValueSet: http://hl7.org/fhir/ValueSet/biologicallyderivedproductdispense-origin-relationship
 */
public enum BiologicallyDerivedProductDispenseOriginRelationship: String, FHIRPrimitiveType {
	
	/// The donor and the recipient are unrelated
	case allogeneic
	
	/// The product was pre-donated by the recipient
	case autologous
	
	/// The donor has been specifically selected to provide product for the recipient
	case directed
	
	/// The product is from a blood relation of the recipient
	case related
	
	/// The product is from a different species to the recipient
	case xenogenic
}
