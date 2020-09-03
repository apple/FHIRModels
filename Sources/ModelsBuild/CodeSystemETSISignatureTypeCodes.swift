//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.5.0-a621ed4bdc
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
 The ETSI TS 101 733 V2.2.1 (2013-04) - Electronic Signatures and Infrastructures (ESI) - defines a set of Commitment
 Types (Purpose of Signature). ETSI TS 101 903 V1.2.2 defines vocabulary identifiers for these Commitment Types. Digital
 Signature Purposes, an indication of the reason an entity signs a document. This is included in the signed information
 and can be used when determining accountability for various actions concerning the document.
 
 URL: http://uri.etsi.org/01903/v1.2.2
 */
public enum ETSISignatureTypeCodes: String, FHIRPrimitiveType {
	
	/// indicates that the signer recognizes to have created, approved and sent the signed data object.
	case proofOfOrigin = "ProofOfOrigin"
	
	/// indicates that signer recognizes to have received the content of the signed data object.
	case proofOfReceipt = "ProofOfReceipt"
	
	/// indicates that the TSP providing that indication has delivered a signed data object in a local store accessible
	/// to the recipient of the signed data object.
	case proofOfDelivery = "ProofOfDelivery"
	
	/// indicates that the entity providing that indication has sent the signed data object (but not necessarily created
	/// it).
	case proofOfSender = "ProofOfSender"
	
	/// indicates that the signer has approved the content of the signed data object.
	case proofOfapproval = "ProofOfapproval"
	
	/// indicates that the signer has created the signed data object (but not necessarily approved, nor sent it).
	case proofOfCreation = "ProofOfCreation"
}
