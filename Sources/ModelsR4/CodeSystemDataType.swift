//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.0.1-9346c8cc45
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
 A version specific list of the data types defined by the FHIR specification for use as an element  type (any of the
 FHIR defined data types).
 
 URL: http://hl7.org/fhir/data-types
 */
public enum DataType: String, FHIRPrimitiveType {
	
	/// An address expressed using postal conventions (as opposed to GPS or other location definition formats).  This
	/// data type may be used to convey addresses for use in delivering mail as well as for visiting locations which
	/// might not be valid for mail delivery.  There are a variety of postal address formats defined around the world.
	case address = "Address"
	
	/// A duration of time during which an organism (or a process) has existed.
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
	
	/// Specifies contact information for a person or organization.
	case contactDetail = "ContactDetail"
	
	/// Details for all kinds of technology mediated contact points for a person or organization, including telephone,
	/// email, etc.
	case contactPoint = "ContactPoint"
	
	/// A contributor to the content of a knowledge asset, including authors, editors, reviewers, and endorsers.
	case contributor = "Contributor"
	
	/// A measured amount (or an amount that can potentially be measured). Note that measured amounts include amounts
	/// that are not precisely quantified, including amounts involving arbitrary units and floating currencies.
	case count = "Count"
	
	/// Describes a required data item for evaluation in terms of the type of data, and optional code or date-based
	/// filters of the data.
	case dataRequirement = "DataRequirement"
	
	/// A length - a value with a unit that is a physical distance.
	case distance = "Distance"
	
	/// Indicates how the medication is/was taken or should be taken by the patient.
	case dosage = "Dosage"
	
	/// A length of time.
	case duration = "Duration"
	
	/// Base definition for all elements in a resource.
	case element = "Element"
	
	/// Captures constraints on each element within the resource, profile, or extension.
	case elementDefinition = "ElementDefinition"
	
	/// A expression that is evaluated in a specified context and returns a value. The context of use of the expression
	/// must specify the context in which the expression is evaluated, and how the result of the expression is used.
	case expression = "Expression"
	
	/// Optional Extension Element - found in all resources.
	case `extension` = "Extension"
	
	/// A human's name with the ability to identify parts and usage.
	case humanName = "HumanName"
	
	/// An identifier - identifies some entity uniquely and unambiguously. Typically this is used for business
	/// identifiers.
	case identifier = "Identifier"
	
	/// The marketing status describes the date when a medicinal product is actually put on the market or the date as of
	/// which it is no longer available.
	case marketingStatus = "MarketingStatus"
	
	/// The metadata about a resource. This is content in the resource that is maintained by the infrastructure. Changes
	/// to the content might not always be associated with version changes to the resource.
	case meta = "Meta"
	
	/// An amount of economic utility in some recognized currency.
	case money = "Money"
	
	/// moneyQuantity
	case moneyQuantity = "MoneyQuantity"
	
	/// A human-readable summary of the resource conveying the essential clinical and business information for the
	/// resource.
	case narrative = "Narrative"
	
	/// The parameters to the module. This collection specifies both the input and output parameters. Input parameters
	/// are provided by the caller as part of the $evaluate operation. Output parameters are included in the
	/// GuidanceResponse.
	case parameterDefinition = "ParameterDefinition"
	
	/// A time period defined by a start and end date and optionally time.
	case period = "Period"
	
	/// A populatioof people with some set of grouping criteria.
	case population = "Population"
	
	/// The marketing status describes the date when a medicinal product is actually put on the market or the date as of
	/// which it is no longer available.
	case prodCharacteristic = "ProdCharacteristic"
	
	/// The shelf-life and storage information for a medicinal product item or container can be described using this
	/// class.
	case productShelfLife = "ProductShelfLife"
	
	/// A measured amount (or an amount that can potentially be measured). Note that measured amounts include amounts
	/// that are not precisely quantified, including amounts involving arbitrary units and floating currencies.
	case quantity = "Quantity"
	
	/// A set of ordered Quantities defined by a low and high limit.
	case range = "Range"
	
	/// A relationship of two Quantity values - expressed as a numerator and a denominator.
	case ratio = "Ratio"
	
	/// A reference from one resource to another.
	case reference = "Reference"
	
	/// Related artifacts such as additional documentation, justification, or bibliographic references.
	case relatedArtifact = "RelatedArtifact"
	
	/// A series of measurements taken by a device, with upper and lower limits. There may be more than one dimension in
	/// the data.
	case sampledData = "SampledData"
	
	/// A signature along with supporting context. The signature may be a digital signature that is cryptographic in
	/// nature, or some other signature acceptable to the domain. This other signature may be as simple as a graphical
	/// image representing a hand-written signature, or a signature ceremony Different signature approaches have
	/// different utilities.
	case signature = "Signature"
	
	/// simpleQuantity
	case simpleQuantity = "SimpleQuantity"
	
	/// Chemical substances are a single substance type whose primary defining element is the molecular structure.
	/// Chemical substances shall be defined on the basis of their complete covalent molecular structure; the presence
	/// of a salt (counter-ion) and/or solvates (water, alcohols) is also captured. Purity, grade, physical form or
	/// particle size are not taken into account in the definition of a chemical substance or in the assignment of a
	/// Substance ID.
	case substanceAmount = "SubstanceAmount"
	
	/// Specifies an event that may occur multiple times. Timing schedules are used to record when things are planned,
	/// expected or requested to occur. The most common usage is in dosage instructions for medications. They are also
	/// used when planning care of various kinds, and may be used for reporting the schedule to which past regular
	/// activities were carried out.
	case timing = "Timing"
	
	/// A description of a triggering event. Triggering events can be named events, data events, or periodic, as
	/// determined by the type element.
	case triggerDefinition = "TriggerDefinition"
	
	/// Specifies clinical/business/etc. metadata that can be used to retrieve, index and/or categorize an artifact.
	/// This metadata can either be specific to the applicable population (e.g., age category, DRG) or the specific
	/// context of care (e.g., venue, care setting, provider of care).
	case usageContext = "UsageContext"
	
	/// A stream of bytes
	case base64Binary = "base64Binary"
	
	/// Value of "true" or "false"
	case boolean = "boolean"
	
	/// A URI that is a reference to a canonical URL on a FHIR resource
	case canonical = "canonical"
	
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
	
	/// A string that may contain Github Flavored Markdown syntax for optional processing by a mark down presentation
	/// engine
	case markdown = "markdown"
	
	/// An OID represented as a URI
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
	
	/// A URI that is a literal reference
	case url = "url"
	
	/// A UUID, represented as a URI
	case uuid = "uuid"
	
	/// XHTML format, as defined by W3C, but restricted usage (mainly, no active content)
	case xhtml = "xhtml"
}
