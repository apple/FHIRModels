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
 Core-defined FHIR channel types allowed for use in Subscriptions.
 
 URL: http://terminology.hl7.org/CodeSystem/subscription-channel-type
 ValueSet: http://hl7.org/fhir/ValueSet/subscription-channel-type
 */
public enum SubscriptionChannelType: String, FHIRPrimitiveType {
	
	/// The channel is executed by making a POST to the URI with the selected payload and MIME type.
	case restHook = "rest-hook"
	
	/// The channel is executed by sending a packet across a web socket connection maintained by the client. The URL
	/// identifies the websocket, and the client binds to this URL.
	case websocket = "websocket"
	
	/// The channel is executed by sending an email to the email addressed in the URI (which must be a mailto:).
	case email = "email"
	
	/// The channel is executed by sending a message (e.g. a Bundle with a MessageHeader resource etc.) to the
	/// application identified in the URI.
	case message = "message"
}
