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
 A code that describes the type of issue.
 
 URL: http://hl7.org/fhir/issue-type
 ValueSet: http://hl7.org/fhir/ValueSet/issue-type
 */
public enum IssueType: String, FHIRPrimitiveType {
	
	/// An extension was found that was not acceptable, could not be resolved, or a modifierExtension was not
	/// recognized.
	case `extension`
	
	/// The content/operation failed to pass some business rule and so could not proceed.
	case businessRule = "business-rule"
	
	/// The code or system could not be understood, or it was not valid in the context of a particular ValueSet.code.
	case codeInvalid = "code-invalid"
	
	/// Content could not be accepted because of an edit conflict (i.e. version aware updates). (In a pure RESTful
	/// environment, this would be an HTTP 409 error, but this code may be used where the conflict is discovered further
	/// into the application architecture.).
	case conflict
	
	/// The reference pointed to content (usually a resource) that has been deleted.
	case deleted
	
	/// An attempt was made to create a duplicate record.
	case duplicate
	
	/// An unexpected internal error has occurred.
	case exception
	
	/// User session expired; a login may be required.
	case expired
	
	/// The user does not have the rights to perform this action.
	case forbidden
	
	/// Not all data sources typically accessed could be reached or responded in time, so the returned information might
	/// not be complete (applies to search interactions and some operations).
	case incomplete
	
	/// A message unrelated to the processing success of the completed operation (examples of the latter include things
	/// like reminders of password expiry, system maintenance times, etc.).
	case informational
	
	/// Content invalid against the specification or a profile.
	case invalid
	
	/// A content validation rule failed - e.g. a schematron rule.
	case invariant
	
	/// Some search filters might not have applied on all results.  Data may have been included that does not meet all
	/// of the filters listed in the `self` `Bundle.link`.
	case limitedFilter = "limited-filter"
	
	/// A resource/record locking failure (usually in an underlying database).
	case lockError = "lock-error"
	
	/// The client needs to initiate an authentication process.
	case login
	
	/// Multiple matching records were found when the operation required only one match.
	case multipleMatches = "multiple-matches"
	
	/// The persistent store is unavailable; e.g. the database is down for maintenance or similar action, and the
	/// interaction or operation cannot be processed.
	case noStore = "no-store"
	
	/// The reference provided was not found. In a pure RESTful environment, this would be an HTTP 404 error, but this
	/// code may be used where the content is not found further into the application architecture.
	case notFound = "not-found"
	
	/// The interaction, operation, resource or profile is not supported.
	case notSupported = "not-supported"
	
	/// Processing issues. These are expected to be final e.g. there is no point resubmitting the same content
	/// unchanged.
	case processing
	
	/// A required element is missing.
	case required
	
	/// An authentication/authorization/permissions issue of some kind.
	case security
	
	/// A structural issue in the content such as wrong namespace, unable to parse the content completely, invalid
	/// syntax, etc.
	case structure
	
	/// The operation completed successfully.
	case success
	
	/// Some information was not or might not have been returned due to business rules, consent or privacy rules, or
	/// access permission constraints.  This information may be accessible through alternate processes.
	case suppressed
	
	/// The system is not prepared to handle this request due to load management.
	case throttled
	
	/// An internal timeout has occurred.
	case timeout
	
	/// The operation was stopped to protect server resources; e.g. a request for a value set expansion on all of SNOMED
	/// CT.
	case tooCostly = "too-costly"
	
	/// Provided content is too long (typically, this is a denial of service protection type of error).
	case tooLong = "too-long"
	
	/// Transient processing issues. The system receiving the message may be able to resubmit the same content once an
	/// underlying issue is resolved.
	case transient
	
	/// The user or system was not able to be authenticated (either there is no process, or the proferred token is
	/// unacceptable).
	case unknown
	
	/// An element or header value is invalid.
	case value
}
