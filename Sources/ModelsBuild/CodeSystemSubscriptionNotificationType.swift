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
 The type of notification represented by the status message.
 
 URL: http://hl7.org/fhir/subscription-notification-type
 ValueSet: http://hl7.org/fhir/ValueSet/subscription-notification-type
 */
public enum SubscriptionNotificationType: String, FHIRPrimitiveType {
	
	/// The status was generated for an event to the subscriber.
	case eventNotification = "event-notification"
	
	/// The status was generated as part of the setup or verification of a communications channel.
	case handshake
	
	/// The status was generated to perform a heartbeat notification to the subscriber.
	case heartbeat
	
	/// The status was generated in response to an event query/request.
	case queryEvent = "query-event"
	
	/// The status was generated in response to a status query/request.
	case queryStatus = "query-status"
}
