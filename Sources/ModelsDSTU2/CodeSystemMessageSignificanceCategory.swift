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
 The impact of the content of a message.
 
 URL: http://hl7.org/fhir/message-significance-category
 ValueSet: http://hl7.org/fhir/ValueSet/message-significance-category
 */
public enum MessageSignificanceCategory: String, FHIRPrimitiveType {
	
	/// The message represents/requests a change that should not be processed more than once; e.g. Making a booking for
	/// an appointment.
	case consequence = "Consequence"
	
	/// The message represents a response to query for current information. Retrospective processing is wrong and/or
	/// wasteful.
	case currency = "Currency"
	
	/// The content is not necessarily intended to be current, and it can be reprocessed, though there may be version
	/// issues created by processing old notifications.
	case notification = "Notification"
}
