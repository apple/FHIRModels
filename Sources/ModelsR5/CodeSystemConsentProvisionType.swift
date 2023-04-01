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
 How a rule statement is applied, such as adding additional consent or removing consent.
 
 URL: http://hl7.org/fhir/consent-provision-type
 ValueSet: http://hl7.org/fhir/ValueSet/consent-provision-type
 */
public enum ConsentProvisionType: String, FHIRPrimitiveType {
	
	/// Consent is denied for actions meeting these rules.
	case deny
	
	/// Consent is provided for actions meeting these rules.
	case permit
}
