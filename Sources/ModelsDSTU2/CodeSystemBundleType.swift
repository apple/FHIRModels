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
 Indicates the purpose of a bundle - how it was intended to be used.
 
 URL: http://hl7.org/fhir/bundle-type
 ValueSet: http://hl7.org/fhir/ValueSet/bundle-type
 */
public enum BundleType: String, FHIRPrimitiveType {
	
	/// The bundle is a document. The first resource is a Composition.
	case document = "document"
	
	/// The bundle is a message. The first resource is a MessageHeader.
	case message = "message"
	
	/// The bundle is a transaction - intended to be processed by a server as an atomic commit.
	case transaction = "transaction"
	
	/// The bundle is a transaction response. Because the response is a transaction response, the transactionhas
	/// succeeded, and all responses are error free.
	case transactionResponse = "transaction-response"
	
	/// The bundle is a transaction - intended to be processed by a server as a group of actions.
	case batch = "batch"
	
	/// The bundle is a batch response. Note that as a batch, some responses may indicate failure and others success.
	case batchResponse = "batch-response"
	
	/// The bundle is a list of resources from a history interaction on a server.
	case history = "history"
	
	/// The bundle is a list of resources returned as a result of a search/query interaction, operation, or message.
	case searchset = "searchset"
	
	/// The bundle is a set of resources collected into a single document for ease of distribution.
	case collection = "collection"
}
