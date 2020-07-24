//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 3.0.1.11917
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
 Complete, proposed, exploratory, other
 
 URL: http://hl7.org/fhir/claim-use
 ValueSet: http://hl7.org/fhir/ValueSet/claim-use
 */
public enum Use: String, FHIRPrimitiveType {
	
	/// The treatment is complete and this represents a Claim for the services.
	case complete = "complete"
	
	/// The treatment is proposed and this represents a Pre-authorization for the services.
	case proposed = "proposed"
	
	/// The treatment is proposed and this represents a Pre-determination for the services.
	case exploratory = "exploratory"
	
	/// A locally defined or otherwise resolved status.
	case other = "other"
}
