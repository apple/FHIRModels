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
 Codes indicating the kind of the price component.
 
 URL: http://hl7.org/fhir/price-component-type
 ValueSet: http://hl7.org/fhir/ValueSet/price-component-type
 */
public enum PriceComponentType: String, FHIRPrimitiveType {
	
	/// The amount is the base price used for calculating the total price before applying surcharges, discount or taxes.
	case base
	
	/// The amount (either directly specified, or calculated using a factor) that reduces the cost of the item.  This is
	/// sometimes referred to as a deduction.
	case discount
	
	/// The amount (either directly specified, or calculated using a factor) is of informational character, it has not
	/// been applied in the calculation of the total price.
	case informational
	
	/// The amount (either directly specified, or calculated using a factor) that increases the cost of the item.
	case surcharge
	
	/// The amount (either directly specified, or calculated using a factor) that is levied by a government on the item.
	case tax
}
