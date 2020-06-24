//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 1.0.2.7202
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
 Value Set for Military Service (Example)
 
 URL: http://hl7.org/fhir/qicore-military-service
 ValueSet: http://hl7.org/fhir/ValueSet/qicore-patient-military-service
 */
public enum MilitaryServiceCodes: String, FHIRPrimitiveType {
	
	/// The military status is not indicated
	case notIndicated = "not-indicated"
	
	/// The subject has no history of military service
	case noMilitaryService = "no-military-service"
	
	/// The subject is has served in the military but is no longer active
	case veteran = "veteran"
	
	/// The subject is not a reserve member and is currently engaged in full-time military activity
	case activeDuty = "active-duty"
	
	/// The subject is a reserve member and is currently engaged in full-time military activity
	case activeReserve = "active-reserve"
	
	/// The subject is a reserve member and is not currently engaged in full-time military activity
	case inactiveReserve = "inactive-reserve"
}
