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
 The severity of the audit entry.
 
 URL: http://hl7.org/fhir/audit-event-severity
 ValueSet: http://hl7.org/fhir/ValueSet/audit-event-severity
 */
public enum AuditEventSeverity: String, FHIRPrimitiveType {
	
	/// Notification should be sent to trigger action be taken. e.g., Loss of the primary network connection needing
	/// attention.
	case alert
	
	/// Critical conditions. e.g., A failure in the system's primary application that will reset automatically.
	case critical
	
	/// Debug-level messages. Information useful to developers for debugging the application.
	case debug
	
	/// System is unusable. e.g., This level should only be reported by infrastructure and should not be used by
	/// applications.
	case emergency
	
	/// Error conditions. e.g., An application has exceeded its file storage limit and attempts to write are failing.
	case error
	
	/// Normal operational messages that require no action. e.g., An application has started, paused, or ended
	/// successfully.
	case informational
	
	/// Notice messages. Normal but significant condition. Events that are unusual, but not error conditions.
	case notice
	
	/// Warning conditions. May indicate that an error will occur if action is not taken. e.g., A non-root file system
	/// has only 2GB remaining.
	case warning
}
