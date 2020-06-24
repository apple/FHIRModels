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
 Indicator for type of action performed during the event that generated the event.
 
 URL: http://hl7.org/fhir/audit-event-action
 ValueSet: http://hl7.org/fhir/ValueSet/audit-event-action
 */
public enum AuditEventAction: String, FHIRPrimitiveType {
	
	/// Create a new database object, such as placing an order.
	case C = "C"
	
	/// Display or print data, such as a doctor census.
	case R = "R"
	
	/// Update data, such as revise patient information.
	case U = "U"
	
	/// Delete items, such as a doctor master file record.
	case D = "D"
	
	/// Perform a system or application function such as log-on, program execution or use of an object's method, or
	/// perform a query/search operation.
	case E = "E"
}
