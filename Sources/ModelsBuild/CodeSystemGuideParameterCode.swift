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
 Code of parameter that is input to the guide.
 
 URL: http://terminology.hl7.org/CodeSystem/guide-parameter-code
 ValueSet: http://hl7.org/fhir/ValueSet/guide-parameter-code
 */
public enum GuideParameterCode: String, FHIRPrimitiveType {
	
	/// If the value of this string 0..* parameter is one of the metadata fields then all conformance resources will
	/// have any specified [Resource].[field] overwritten with the ImplementationGuide.[field], where field is one of:
	/// version, date, status, publisher, contact, copyright, experimental, jurisdiction, useContext.
	case apply = "apply"
	
	/// The value of this string 0..* parameter is a subfolder of the build context's location that is to be scanned to
	/// load resources. Scope is (if present) a particular resource type.
	case pathResource = "path-resource"
	
	/// The value of this string 0..1 parameter is a subfolder of the build context's location that contains files that
	/// are part of the html content processed by the builder.
	case pathPages = "path-pages"
	
	/// The value of this string 0..1 parameter is a subfolder of the build context's location that is used as the
	/// terminology cache. If this is not present, the terminology cache is on the local system, not under version
	/// control.
	case pathTxCache = "path-tx-cache"
	
	/// The value of this string 0..* parameter is a parameter (name=value) when expanding value sets for this
	/// implementation guide. This is particularly used to specify the versions of published terminologies such as
	/// SNOMED CT.
	case expansionParameter = "expansion-parameter"
	
	/// The value of this string 0..1 parameter is either "warning" or "error" (default = "error"). If the value is
	/// "warning" then IG build tools allow the IG to be considered successfully build even when there is no internal
	/// broken links.
	case ruleBrokenLinks = "rule-broken-links"
	
	/// The value of this boolean 0..1 parameter specifies whether the IG publisher creates examples in XML format. If
	/// not present, the Publication Tool decides whether to generate XML.
	case generateXml = "generate-xml"
	
	/// The value of this boolean 0..1 parameter specifies whether the IG publisher creates examples in JSON format. If
	/// not present, the Publication Tool decides whether to generate JSON.
	case generateJson = "generate-json"
	
	/// The value of this boolean 0..1 parameter specifies whether the IG publisher creates examples in Turtle format.
	/// If not present, the Publication Tool decides whether to generate Turtle.
	case generateTurtle = "generate-turtle"
	
	/// The value of this string singleton parameter is the name of the file to use as the builder template for each
	/// generated page (see templating).
	case htmlTemplate = "html-template"
}
