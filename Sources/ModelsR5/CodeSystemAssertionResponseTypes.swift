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
 The type of response code to use for assertion.
 
 URL: http://hl7.org/fhir/assert-response-code-types
 ValueSet: http://hl7.org/fhir/ValueSet/assert-response-code-types
 */
public enum AssertionResponseTypes: String, FHIRPrimitiveType {
	
	/// Response code is 100.
	case `continue`
	
	/// Response code is 202.
	case accepted
	
	/// Response code is 502.
	case badGateway
	
	/// Response code is 400.
	case badRequest
	
	/// Response code is 409.
	case conflict
	
	/// Response code is 413.
	case contentTooLarge
	
	/// Response code is 201.
	case created
	
	/// Response code is 417.
	case expectationFailed
	
	/// Response code is 403.
	case forbidden
	
	/// Response code is 302.
	case found
	
	/// Response code is 504.
	case gatewayTimeout
	
	/// Response code is 410.
	case gone
	
	/// Response code is 505.
	case httpVersionNotSupported
	
	/// Response code is 500.
	case internalServerError
	
	/// Response code is 411.
	case lengthRequired
	
	/// Response code is 405.
	case methodNotAllowed
	
	/// Response code is 421.
	case misdirectedRequest
	
	/// Response code is 301.
	case movedPermanently
	
	/// Response code is 300.
	case multipleChoices
	
	/// Response code is 204.
	case noContent
	
	/// Response code is 203.
	case nonAuthoritativeInformation
	
	/// Response code is 406.
	case notAcceptable
	
	/// Response code is 404.
	case notFound
	
	/// Response code is 501.
	case notImplemented
	
	/// Response code is 304.
	case notModified
	
	/// Response code is 200.
	case okay
	
	/// Response code is 206.
	case partialContent
	
	/// Response code is 402.
	case paymentRequired
	
	/// Response code is 308.
	case permanentRedirect
	
	/// Response code is 412.
	case preconditionFailed
	
	/// Response code is 407.
	case proxyAuthenticationRequired
	
	/// Response code is 416.
	case rangeNotSatisfiable
	
	/// Response code is 408.
	case requestTimeout
	
	/// Response code is 205.
	case resetContent
	
	/// Response code is 303.
	case seeOther
	
	/// Response code is 503.
	case serviceUnavailable
	
	/// Response code is 101.
	case switchingProtocols
	
	/// Response code is 307.
	case temporaryRedirect
	
	/// Response code is 401.
	case unauthorized
	
	/// Response code is 422.
	case unprocessableContent
	
	/// Response code is 415.
	case unsupportedMediaType
	
	/// Response code is 426.
	case upgradeRequired
	
	/// Response code is 414.
	case uriTooLong
	
	/// Response code is 305.
	case useProxy
}
