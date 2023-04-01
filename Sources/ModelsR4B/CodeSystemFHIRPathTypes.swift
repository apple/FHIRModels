//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.3.0
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
 All FHIRPath data types
 
 URL: http://hl7.org/fhir/CodeSystem/fhirpath-types
 ValueSet: http://hl7.org/fhir/ValueSet/fhirpath-types
 */
public enum FHIRPathTypes: String, FHIRPrimitiveType {
	
	/// httpHl7OrgFhirpathSystemBoolean
	case httpHl7OrgFhirpathSystemBoolean = "http://hl7.org/fhirpath/System.Boolean"
	
	/// httpHl7OrgFhirpathSystemDate
	case httpHl7OrgFhirpathSystemDate = "http://hl7.org/fhirpath/System.Date"
	
	/// httpHl7OrgFhirpathSystemDateTime
	case httpHl7OrgFhirpathSystemDateTime = "http://hl7.org/fhirpath/System.DateTime"
	
	/// httpHl7OrgFhirpathSystemDecimal
	case httpHl7OrgFhirpathSystemDecimal = "http://hl7.org/fhirpath/System.Decimal"
	
	/// httpHl7OrgFhirpathSystemInteger
	case httpHl7OrgFhirpathSystemInteger = "http://hl7.org/fhirpath/System.Integer"
	
	/// httpHl7OrgFhirpathSystemString
	case httpHl7OrgFhirpathSystemString = "http://hl7.org/fhirpath/System.String"
	
	/// httpHl7OrgFhirpathSystemTime
	case httpHl7OrgFhirpathSystemTime = "http://hl7.org/fhirpath/System.Time"
}
