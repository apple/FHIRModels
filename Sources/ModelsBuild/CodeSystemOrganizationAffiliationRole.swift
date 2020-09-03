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
 This example value set defines a set of codes that can be used to indicate the role of one Organization in relation to
 another.
 
 URL: http://hl7.org/fhir/organization-role
 ValueSet: http://hl7.org/fhir/ValueSet/organization-role
 */
public enum OrganizationAffiliationRole: String, FHIRPrimitiveType {
	
	/// provider
	case provider = "provider"
	
	/// An organization such as a public health agency, community/social services provider, etc.
	case agency = "agency"
	
	/// An organization providing research-related services such as conducting research, recruiting research
	/// participants, analyzing data, etc.
	case research = "research"
	
	/// An organization providing reimbursement, payment, or related services
	case payer = "payer"
	
	/// An organization providing diagnostic testing/laboratory services
	case diagnostics = "diagnostics"
	
	/// An organization that provides medical supplies (e.g. medical devices, equipment, pharmaceutical products, etc.)
	case supplier = "supplier"
	
	/// An organization that facilitates electronic clinical data exchange between entities
	case HIEHIO = "HIE/HIO"
	
	/// A type of non-ownership relationship between entities (encompasses partnerships, collaboration, joint ventures,
	/// etc.)
	case member = "member"
}
