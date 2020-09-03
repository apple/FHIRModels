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
 This value set includes sample Performer Role codes.
 
 URL: http://hl7.org/fhir/consentperformer
 ValueSet: http://hl7.org/fhir/ValueSet/consent-performer
 */
public enum PerformerRoleCodes: String, FHIRPrimitiveType {
	
	/// An entity or an entity's delegatee who is the grantee in an agreement such as a consent for services, advanced
	/// directive, or a privacy consent directive in accordance with jurisdictional, organizational, or patient policy.
	case consenter = "consenter"
	
	/// An entity which accepts certain rights or authority from a grantor.
	case grantee = "grantee"
	
	/// An entity which agrees to confer certain rights or authority to a grantee.
	case grantor = "grantor"
	
	/// A party to whom some right or authority is granted by a delegator.
	case delegatee = "delegatee"
	
	/// A party that grants all or some portion its right or authority to another party.
	case delegator = "delegator"
}
