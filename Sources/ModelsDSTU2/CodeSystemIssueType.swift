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
 A code that describes the type of issue.
 
 URL: http://hl7.org/fhir/issue-type
 ValueSet: http://hl7.org/fhir/ValueSet/issue-type
 */
public enum IssueType: String, FHIRPrimitiveType {
	
	/// Content invalid against the specification or a profile.
	case invalid = "invalid"
	
	/// A structural issue in the content such as wrong namespace, or unable to parse the content completely, or invalid
	/// json syntax.
	case structure = "structure"
	
	/// A required element is missing.
	case required = "required"
	
	/// An element value is invalid.
	case value = "value"
	
	/// A content validation rule failed - e.g. a schematron rule.
	case invariant = "invariant"
	
	/// An authentication/authorization/permissions issue of some kind.
	case security = "security"
	
	/// The client needs to initiate an authentication process.
	case login = "login"
	
	/// The user or system was not able to be authenticated (either there is no process, or the proferred token is
	/// unacceptable).
	case unknown = "unknown"
	
	/// User session expired; a login may be required.
	case expired = "expired"
	
	/// The user does not have the rights to perform this action.
	case forbidden = "forbidden"
	
	/// Some information was not or may not have been returned due to business rules, consent or privacy rules, or
	/// access permission constraints.  This information may be accessible through alternate processes.
	case suppressed = "suppressed"
	
	/// Processing issues. These are expected to be final e.g. there is no point resubmitting the same content
	/// unchanged.
	case processing = "processing"
	
	/// The resource or profile is not supported.
	case notSupported = "not-supported"
	
	/// An attempt was made to create a duplicate record.
	case duplicate = "duplicate"
	
	/// The reference provided was not found. In a pure RESTful environment, this would be an HTTP 404 error, but this
	/// code may be used where the content is not found further into the application architecture.
	case notFound = "not-found"
	
	/// Provided content is too long (typically, this is a denial of service protection type of error).
	case tooLong = "too-long"
	
	/// The code or system could not be understood, or it was not valid in the context of a particular ValueSet.code.
	case codeInvalid = "code-invalid"
	
	/// An extension was found that was not acceptable, could not be resolved, or a modifierExtension was not
	/// recognized.
	case `extension` = "extension"
	
	/// The operation was stopped to protect server resources; e.g. a request for a value set expansion on all of SNOMED
	/// CT.
	case tooCostly = "too-costly"
	
	/// The content/operation failed to pass some business rule, and so could not proceed.
	case businessRule = "business-rule"
	
	/// Content could not be accepted because of an edit conflict (i.e. version aware updates) (In a pure RESTful
	/// environment, this would be an HTTP 404 error, but this code may be used where the conflict is discovered further
	/// into the application architecture.)
	case conflict = "conflict"
	
	/// Not all data sources typically accessed could be reached, or responded in time, so the returned information may
	/// not be complete.
	case incomplete = "incomplete"
	
	/// Transient processing issues. The system receiving the error may be able to resubmit the same content once an
	/// underlying issue is resolved.
	case transient = "transient"
	
	/// A resource/record locking failure (usually in an underlying database).
	case lockError = "lock-error"
	
	/// The persistent store is unavailable; e.g. the database is down for maintenance or similar action.
	case noStore = "no-store"
	
	/// An unexpected internal error has occurred.
	case exception = "exception"
	
	/// An internal timeout has occurred.
	case timeout = "timeout"
	
	/// The system is not prepared to handle this request due to load management.
	case throttled = "throttled"
	
	/// A message unrelated to the processing success of the completed operation (examples of the latter include things
	/// like reminders of password expiry, system maintenance times, etc.).
	case informational = "informational"
}
