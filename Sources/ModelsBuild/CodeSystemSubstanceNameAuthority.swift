//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 6.0.0-ballot3
//  Copyright 2025 Apple Inc.
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
 SubstanceNameAuthority
 
 URL: http://hl7.org/fhir/substance-name-authority
 ValueSet: http://hl7.org/fhir/ValueSet/substance-name-authority
 */
public enum SubstanceNameAuthority: String, FHIRPrimitiveType {
	
	/// BAN
	case BAN
	
	/// COSING
	case COSING
	
	/// FCC
	case FCC
	
	/// HAB
	case HAB
	
	/// INCI
	case INCI
	
	/// INN
	case INN
	
	/// IUIS
	case IUIS
	
	/// JAN
	case JAN
	
	/// JECFA
	case JECFA
	
	/// MARTINDALE
	case MARTINDALE
	
	/// PHF
	case PHF
	
	/// USAN
	case USAN
	
	/// USP
	case USP
	
	/// phEur
	case phEur = "Ph.Eur."
	
	/// phF
	case phF = "PhF"
}
