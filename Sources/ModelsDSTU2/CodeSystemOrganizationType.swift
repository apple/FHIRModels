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
 This example value set defines a set of codes that can be used to indicate a type of organization.
 
 URL: http://hl7.org/fhir/organization-type
 ValueSet: http://hl7.org/fhir/ValueSet/organization-type
 */
public enum OrganizationType: String, FHIRPrimitiveType {
	
	/// An organization that provides healthcare services.
	case prov = "prov"
	
	/// A department or ward within a hospital (Generally is not applicable to top level organizations)
	case dept = "dept"
	
	/// An organizational team is usually a grouping of practitioners that perform a specific function within an
	/// organization (which could be a top level organization, or a department).
	case team = "team"
	
	/// A political body, often used when including organization records for government bodies such as a Federal
	/// Government, State or Local Government.
	case govt = "govt"
	
	/// A company that provides insurance to its subscribers that may include healthcare related policies.
	case ins = "ins"
	
	/// An educational institution that provides education or research facilities.
	case edu = "edu"
	
	/// An organization that is identified as a part of a religious institution.
	case reli = "reli"
	
	/// An organization that is identified as a Pharmaceutical/Clinical Research Sponsor.
	case crs = "crs"
	
	/// An un-incorporated community group.
	case cg = "cg"
	
	/// An organization that is a registered business or corporation but not identified by other types.
	case bus = "bus"
	
	/// Other type of organization not already specified.
	case other = "other"
}
