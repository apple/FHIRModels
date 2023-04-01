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
 This code system supports describing the source of the vaccine actually administered. This may be different than the
 patient eligbility (e.g. the patient may be eligibile for a publically purchased vaccine but due to inventory issues,
 vaccine purchased with private funds was actually administered).
 
 URL: http://terminology.hl7.org/CodeSystem/immunization-funding-source
 */
public enum ImmunizationEventFundingSource: String, FHIRPrimitiveType {
	
	/// The vaccine was purchased with private funds.
	case `private`
	
	/// The vaccine was purchased with public funds.
	case `public`
}
