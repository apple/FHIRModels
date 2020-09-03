//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.5.0-a621ed4bdc
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
 Indicates the potential degree of impact of the identified issue on the patient.
 
 URL: http://hl7.org/fhir/detectedissue-severity
 ValueSet: http://hl7.org/fhir/ValueSet/detectedissue-severity
 */
public enum DetectedIssueSeverity: String, FHIRPrimitiveType {
	
	/// Indicates the issue may be life-threatening or has the potential to cause permanent injury.
	case high = "high"
	
	/// Indicates the issue may result in noticeable adverse consequences but is unlikely to be life-threatening or
	/// cause permanent injury.
	case moderate = "moderate"
	
	/// Indicates the issue may result in some adverse consequences but is unlikely to substantially affect the
	/// situation of the subject.
	case low = "low"
}
