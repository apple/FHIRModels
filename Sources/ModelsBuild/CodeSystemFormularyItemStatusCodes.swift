//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 6.0.0-ballot2
//  Copyright 2024 Apple Inc.
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
 FormularyItem Status Codes
 
 URL: http://hl7.org/fhir/CodeSystem/formularyitem-status
 ValueSet: http://hl7.org/fhir/ValueSet/formularyitem-status
 */
public enum FormularyItemStatusCodes: String, FHIRPrimitiveType {
	
	/// The service or product referred to by this FormularyItem is in active use within the drug database or inventory
	/// system.
	case active
	
	/// The service or product referred to by this FormularyItem was entered in error within the drug database or
	/// inventory system.
	case enteredInError = "entered-in-error"
	
	/// The service or product referred to by this FormularyItem is not in active use within the drug database or
	/// inventory system.
	case inactive
}
