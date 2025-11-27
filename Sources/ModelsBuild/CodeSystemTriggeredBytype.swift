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
 Codes providing the triggeredBy type of observation.
 
 URL: http://hl7.org/fhir/observation-triggeredbytype
 ValueSet: http://hl7.org/fhir/ValueSet/observation-triggeredbytype
 */
public enum TriggeredBytype: String, FHIRPrimitiveType {
	
	/// Performance of the same test again with the same parameters/settings/solution.
	case `repeat`
	
	/// Performance of the same test but with different parameters/settings/solution.
	case reRun = "re-run"
	
	/// Performance of one or more other tests depending on the results of the initial test.  This may include
	/// collection of additional specimen. While a new ServiceRequest is not required to perform the additional test,
	/// where it is still needed (e.g., requesting another laboratory to perform the reflex test), the
	/// Observation.basedOn would reference the new ServiceRequest that requested the additional test to be performed as
	/// well as the original ServiceRequest to reflect the one that provided the authorization.
	case reflex
}
