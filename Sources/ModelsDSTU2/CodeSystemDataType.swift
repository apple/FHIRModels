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
 The type of an element - one of the FHIR data types.
 
 URL: http://hl7.org/fhir/data-types
 ValueSet: http://hl7.org/fhir/ValueSet/data-types
 */
public enum DataType: String, FHIRPrimitiveType {
	
	/// There is a variety of postal address formats defined around the world. This format defines a superset that is
	/// the basis for all addresses around the world.
	case address = "Address"
	
	/// age
	case age = "Age"
	
	/// A  text note which also  contains information about who made the statement and when.
	case annotation = "Annotation"
	
	/// For referring to data content defined in other formats.
	case attachment = "Attachment"
	
	/// Base definition for all elements that are defined inside a resource - but not those in a data type.
	case backboneElement = "BackboneElement"
	
	/// A concept that may be defined by a formal reference to a terminology or ontology or may be provided by text.
	case codeableConcept = "CodeableConcept"
	
	/// A reference to a code defined by a terminology system.
	case coding = "Coding"
	
	/// Details for all kinds of technology mediated contact points for a person or organization, including telephone,
	/// email, etc.
	case contactPoint = "ContactPoint"
	
	/// count
	case count = "Count"
	
	/// distance
	case distance = "Distance"
	
	/// duration
	case duration = "Duration"
	
	/// Base definition for all elements in a resource.
	case element = "Element"
	
	/// Captures constraints on each element within the resource, profile, or extension.
	case elementDefinition = "ElementDefinition"
	
	/// Optional Extensions Element - found in all resources.
	case `extension` = "Extension"
	
	/// A human's name with the ability to identify parts and usage.
	case humanName = "HumanName"
	
	/// A technical identifier - identifies some entity uniquely and unambiguously.
	case identifier = "Identifier"
	
	/// The metadata about a resource. This is content in the resource that is maintained by the infrastructure. Changes
	/// to the content may not always be associated with version changes to the resource.
	case meta = "Meta"
	
	/// money
	case money = "Money"
	
	/// A human-readable formatted text, including images.
	case narrative = "Narrative"
	
	/// A time period defined by a start and end date and optionally time.
	case period = "Period"
	
	/// A measured amount (or an amount that can potentially be measured). Note that measured amounts include amounts
	/// that are not precisely quantified, including amounts involving arbitrary units and floating currencies.
	case quantity = "Quantity"
	
	/// A set of ordered Quantities defined by a low and high limit.
	case range = "Range"
	
	/// A relationship of two Quantity values - expressed as a numerator and a denominator.
	case ratio = "Ratio"
	
	/// A reference from one resource to another.
	case reference = "Reference"
	
	/// A series of measurements taken by a device, with upper and lower limits. There may be more than one dimension in
	/// the data.
	case sampledData = "SampledData"
	
	/// A digital signature along with supporting context. The signature may be electronic/cryptographic in nature, or a
	/// graphical image representing a hand-written signature, or a signature process. Different Signature approaches
	/// have different utilities.
	case signature = "Signature"
	
	/// simpleQuantity
	case simpleQuantity = "SimpleQuantity"
	
	/// Specifies an event that may occur multiple times. Timing schedules are used to record when things are expected
	/// or requested to occur. The most common usage is in dosage instructions for medications. They are also used when
	/// planning care of various kinds.
	case timing = "Timing"
	
	/// A stream of bytes
	case base64Binary = "base64Binary"
	
	/// Value of "true" or "false"
	case boolean = "boolean"
	
	/// A string which has at least one character and no leading or trailing whitespace and where there is no whitespace
	/// other than single spaces in the contents
	case code = "code"
	
	/// A date or partial date (e.g. just year or year + month). There is no time zone. The format is a union of the
	/// schema types gYear, gYearMonth and date.  Dates SHALL be valid dates.
	case date = "date"
	
	/// A date, date-time or partial date (e.g. just year or year + month).  If hours and minutes are specified, a time
	/// zone SHALL be populated. The format is a union of the schema types gYear, gYearMonth, date and dateTime. Seconds
	/// must be provided due to schema type constraints but may be zero-filled and may be ignored.                 Dates
	/// SHALL be valid dates.
	case dateTime = "dateTime"
	
	/// A rational number with implicit precision
	case decimal = "decimal"
	
	/// Any combination of letters, numerals, "-" and ".", with a length limit of 64 characters.  (This might be an
	/// integer, an unprefixed OID, UUID or any other identifier pattern that meets these constraints.)  Ids are case-
	/// insensitive.
	case id = "id"
	
	/// An instant in time - known at least to the second
	case instant = "instant"
	
	/// A whole number
	case integer = "integer"
	
	/// A string that may contain markdown syntax for optional processing by a mark down presentation engine
	case markdown = "markdown"
	
	/// An oid represented as a URI
	case oid = "oid"
	
	/// An integer with a value that is positive (e.g. >0)
	case positiveInt = "positiveInt"
	
	/// A sequence of Unicode characters
	case string = "string"
	
	/// A time during the day, with no date specified
	case time = "time"
	
	/// An integer with a value that is not negative (e.g. >= 0)
	case unsignedInt = "unsignedInt"
	
	/// String of characters used to identify a name or a resource
	case uri = "uri"
	
	/// A UUID, represented as a URI
	case uuid = "uuid"
	
	/// XHTML format, as defined by W3C, but restricted usage (mainly, no active content)
	case xhtml = "xhtml"
}
