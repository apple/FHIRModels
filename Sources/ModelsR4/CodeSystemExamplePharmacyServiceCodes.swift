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
 This value set includes a smattering of Pharmacy Service codes.
 
 URL: http://hl7.org/fhir/ex-pharmaservice
 ValueSet: http://hl7.org/fhir/ValueSet/service-pharmacy
 */
public enum ExamplePharmacyServiceCodes: String, FHIRPrimitiveType {
	
	/// Smoking cessation
	case smokecess = "smokecess"
	
	/// Flu Shot
	case flushot = "flushot"
	
	/// The wholesale price of the medication.
	case drugcost = "drugcost"
	
	/// The additional cost assessed on the drug.
	case markup = "markup"
	
	/// The professional fee charged for dispensing the product or service.
	case dispensefee = "dispensefee"
	
	/// The professional fee charged for compounding the medication.
	case compoundfee = "compoundfee"
}
