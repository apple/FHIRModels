//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 6.0.0-ballot3
//  Copyright 2025 Apple Inc.
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
 Identifies the style of unique identifier used to identify a namespace.
 
 URL: http://hl7.org/fhir/namingsystem-identifier-type
 ValueSet: http://hl7.org/fhir/ValueSet/namingsystem-identifier-type
 */
public enum NamingSystemIdentifierType: String, FHIRPrimitiveType {
	
	/// An IRI string that can be prepended to the code to obtain a concept IRI for RDF applications. This should be a
	/// valid, absolute IRI as defined in RFC 3987. See [the RDF spec](rdf.html#iri-stem) for details on how this value
	/// may be used.
	case iriStem = "iri-stem"
	
	/// An ISO object identifier; e.g. 1.2.3.4.5.
	case oid
	
	/// Some other type of unique identifier; e.g. HL7-assigned reserved string such as LN for LOINC.
	case other
	
	/// A uniform resource identifier (ideally a URL - uniform resource locator); e.g. http://unitsofmeasure.org.
	case uri
	
	/// A universally unique identifier of the form a5afddf4-e880-459b-876e-e4591b0acc11.
	case uuid
	
	/// A short string published by HL7 for use in the V2 family of standsrds to idenfify a code system in the V12 coded
	/// data types CWE, CNE, and CF. The code values are also published by HL7 at
	/// http://www.hl7.org/Special/committees/vocab/table_0396/index.cfm
	case v2csmnemonic
}
