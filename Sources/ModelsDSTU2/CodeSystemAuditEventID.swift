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
 Event Types for Audit Events - defined by DICOM with some FHIR specific additions.
 
 URL: http://hl7.org/fhir/audit-event-type
 ValueSet: http://hl7.org/fhir/ValueSet/audit-event-type
 */
public enum AuditEventID: String, FHIRPrimitiveType {
	
	/// Audit Event: Execution of a RESTful operation as defined by FHIR.
	case rest = "rest"
}
