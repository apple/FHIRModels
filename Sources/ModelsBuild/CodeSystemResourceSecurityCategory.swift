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
 Provides general guidance around the kind of access Control to Read, Search, Create, Update, or Delete a resource.
 
 URL: http://terminology.hl7.org/CodeSystem/resource-security-category
 ValueSet: http://hl7.org/fhir/ValueSet/resource-security-category
 */
public enum ResourceSecurityCategory: String, FHIRPrimitiveType {
	
	/// These resources tend to not contain any individual data, or business sensitive data. Most often these Resources
	/// will be available for anonymous access, meaning there is no access control based on the user or system
	/// requesting. However these Resources do tend to contain important information that must be authenticated back to
	/// the source publishing them, and protected from integrity failures in communication. For this reason server
	/// authenticated https (TLS) is recommended to provide authentication of the server and integrity protection in
	/// transit. This is normal web-server use of https.
	case anonymous = "anonymous"
	
	/// These Resources tend to not contain any individual data, but do have data that describe business or service
	/// sensitive data. The use of the term Business is not intended to only mean an incorporated business, but rather
	/// the more broad concept of an organization, location, or other group that is not identifable as individuals.
	/// Often these resources will require some for of client authentication to assure that only authorized access is
	/// given. The client access control may be to individuals, or may be to system identity. For this purpose possible
	/// client authentication methods such as: mutual-authenticated-TLS, APIKey, App signed JWT, or App OAuth client-id
	/// JWT For example: a App that uses a Business protected Provider Directory to determine other business endpoint
	/// details.
	case business = "business"
	
	/// These Resources do NOT contain Patient data, but do contain individual information about other participants.
	/// These other individuals are Practitioners, PractitionerRole, CareTeam, or other users. These identities are
	/// needed to enable the practice of healthcare. These identities are identities under general privacy regulations,
	/// and thus must consider Privacy risk. Often access to these other identities are covered by business
	/// relationships. For this purpose access to these Resources will tend to be Role specific using methods such as
	/// RBAC or ABAC.
	case individual = "individual"
	
	/// These Resources make up the bulk of FHIR and therefore are the most commonly understood. These Resources contain
	/// highly sesitive health information, or are closely linked to highly sensitive health information. These
	/// Resources will often use the security labels to differentiate various confidentiality levels within this broad
	/// group of Patient Sensitive data. Access to these Resources often requires a declared Purpose Of Use. Access to
	/// these Resources is often controlled by a Privacy Consent.
	case patient = "patient"
	
	/// Some Resources can be used for a wide scope of use-cases that span very sensitive to very non-sensitive. These
	/// Resources do not fall into any of the above classifications, as their sensitivity is highly variable. These
	/// Resources will need special handling. These Resources often contain metadata that describes the content in a way
	/// that can be used for Access Control decisions.
	case notClassified = "not-classified"
}
