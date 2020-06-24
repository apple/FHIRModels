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
 This example value set defines a set of codes that can be used to indicate the role of a Practitioner.
 
 URL: http://terminology.hl7.org/CodeSystem/practitioner-role
 */
public enum PractitionerRoleCodes: String, FHIRPrimitiveType {
	
	/// A qualified/registered medical practitioner
	case doctor = "doctor"
	
	/// A practitioner with nursing experience that may be qualified/registered
	case nurse = "nurse"
	
	/// A qualified/registered/licensed pharmacist
	case pharmacist = "pharmacist"
	
	/// A practitioner that may perform research
	case researcher = "researcher"
	
	/// Someone who is able to provide educational services
	case teacher = "teacher"
	
	/// Someone who is qualified in Information and Communication Technologies
	case ict = "ict"
}
