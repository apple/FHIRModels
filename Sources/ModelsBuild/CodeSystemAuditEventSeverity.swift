//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.6.0-048af26
//  Copyright 2022 Apple Inc.
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
 The severity of the audit entry.
 
 URL: http://hl7.org/fhir/audit-event-severity
 ValueSet: http://hl7.org/fhir/ValueSet/audit-event-severity
 */
public enum AuditEventSeverity: String, FHIRPrimitiveType {
	
	/// Action must be taken immediately.
	case alert
	
	/// Critical conditions.
	case critical
	
	/// Debug-level messages.
	case debug
	
	/// System is unusable.
	case emergency
	
	/// Error conditions.
	case error
	
	/// Informational messages.
	case informational
	
	/// Normal but significant condition.
	case notice
	
	/// Warning conditions.
	case warning
}
