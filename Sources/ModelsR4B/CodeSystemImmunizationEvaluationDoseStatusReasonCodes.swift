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
 This code system supports describing the reason why an administered dose has been assigned a particular status. Often,
 this reason describes why a dose is considered invalid.
 
 URL: http://terminology.hl7.org/CodeSystem/immunization-evaluation-dose-status-reason
 */
public enum ImmunizationEvaluationDoseStatusReasonCodes: String, FHIRPrimitiveType {
	
	/// The product was stored in a manner inconsistent with manufacturer guidelines potentially reducing the
	/// effectiveness of the product.
	case advstorage
	
	/// The product was stored at a temperature inconsistent with manufacturer guidelines potentially reducing the
	/// effectiveness of the product.
	case coldchbrk
	
	/// The product was administered after the expiration date associated with lot of vaccine.
	case explot
	
	/// The product was administered at a time inconsistent with the documented schedule.
	case outsidesched
	
	/// The product administered has been recalled by the manufacturer.
	case prodrecall
}
