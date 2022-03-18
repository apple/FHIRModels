//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.6.0-048af26
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
 This example value set defines a set of codes that can be used to indicate the current state of the animal's
 reproductive organs.
 
 URL: http://hl7.org/fhir/animal-genderstatus
 */
public enum GenderStatus: String, FHIRPrimitiveType {
	
	/// The animal's reproductive organs are intact.
	case intact
	
	/// The animal has been sterilized, castrated or otherwise made infertile.
	case neutered
	
	/// Unable to determine whether the animal has been neutered.
	case unknown
}
