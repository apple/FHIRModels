//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.4.0-29ad3ab0
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
 The type of notification represented by the status message.
 
 URL: http://hl7.org/fhir/subscription-notification-type
 ValueSet: http://hl7.org/fhir/ValueSet/subscription-notification-type
 */
public enum SubscriptionNotificationType: String, FHIRPrimitiveType {
	
	/// The notification is being sent as part of the setup or verification of a communications channel.
	case handshake = "handshake"
	
	/// The notification is being sent because there has not been a notification generated over an extended period of
	/// time.
	case heartbeat = "heartbeat"
	
	/// The notification is being sent due to an event for the subscriber.
	case eventNotification = "event-notification"
}
