//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 3.0.1.11917
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
 Telecommunications form for contact point
 
 URL: http://hl7.org/fhir/contact-point-system
 ValueSet: http://hl7.org/fhir/ValueSet/contact-point-system
 */
public enum ContactPointSystem: String, FHIRPrimitiveType {
	
	/// The value is a telephone number used for voice calls. Use of full international numbers starting with + is
	/// recommended to enable automatic dialing support but not required.
	case phone = "phone"
	
	/// The value is a fax machine. Use of full international numbers starting with + is recommended to enable automatic
	/// dialing support but not required.
	case fax = "fax"
	
	/// The value is an email address.
	case email = "email"
	
	/// The value is a pager number. These may be local pager numbers that are only usable on a particular pager system.
	case pager = "pager"
	
	/// A contact that is not a phone, fax, pager or email address and is expressed as a URL.  This is intended for
	/// various personal contacts including blogs, Skype, Twitter, Facebook, etc. Do not use for email addresses.
	case url = "url"
	
	/// A contact that can be used for sending an sms message (e.g. mobide phones, some landlines)
	case sms = "sms"
	
	/// A contact that is not a phone, fax, page or email address and is not expressible as a URL.  E.g. Internal mail
	/// address.  This SHOULD NOT be used for contacts that are expressible as a URL (e.g. Skype, Twitter, Facebook,
	/// etc.)  Extensions may be used to distinguish "other" contact types.
	case other = "other"
}
