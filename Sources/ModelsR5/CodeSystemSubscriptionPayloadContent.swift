//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 5.0.0
//  Copyright 2023 Apple Inc.
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
 Codes to represent how much resource content to send in the notification payload.
 
 URL: http://hl7.org/fhir/subscription-payload-content
 ValueSet: http://hl7.org/fhir/ValueSet/subscription-payload-content
 */
public enum SubscriptionPayloadContent: String, FHIRPrimitiveType {
	
	/// No resource content is transacted in the notification payload.
	case empty
	
	/// The entire resource is transacted in the notification payload.
	case fullResource = "full-resource"
	
	/// Only the resource id is transacted in the notification payload.
	case idOnly = "id-only"
}
