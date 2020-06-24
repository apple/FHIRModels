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
 The workflow/clinical status of the composition.
 
 URL: http://hl7.org/fhir/composition-status
 ValueSet: http://hl7.org/fhir/ValueSet/composition-status
 */
public enum CompositionStatus: String, FHIRPrimitiveType {
	
	/// This is a preliminary composition or document (also known as initial or interim). The content may be incomplete
	/// or unverified.
	case preliminary = "preliminary"
	
	/// This version of the composition is complete and verified by an appropriate person and no further work is
	/// planned. Any subsequent updates would be on a new version of the composition.
	case final = "final"
	
	/// The composition content or the referenced resources have been modified (edited or added to) subsequent to being
	/// released as "final" and the composition is complete and verified by an authorized person.
	case amended = "amended"
	
	/// The composition or document was originally created/issued in error, and this is an amendment that marks that the
	/// entire series should not be considered as valid.
	case enteredInError = "entered-in-error"
}
