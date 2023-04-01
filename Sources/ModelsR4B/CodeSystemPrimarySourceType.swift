//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.3.0
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
 Type of the validation primary source
 
 URL: http://hl7.org/fhir/verificationresult-primary-source-type
 ValueSet: http://hl7.org/fhir/ValueSet/primary-source-type
 */
public enum PrimarySourceType: String, FHIRPrimitiveType {
	
	/// authSource
	case authSource = "auth-source"
	
	/// contEd
	case contEd = "cont-ed"
	
	/// issuer
	case issuer
	
	/// legal
	case legal
	
	/// licBoard
	case licBoard = "lic-board"
	
	/// postServ
	case postServ = "post-serv"
	
	/// prim
	case prim
	
	/// regAuth
	case regAuth = "reg-auth"
	
	/// relOwn
	case relOwn = "rel-own"
}
