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
 This example value set defines a set of codes that can be used to indicate the role of one Organization in relation to
 its affiliation with another.
 
 URL: http://hl7.org/fhir/organization-role
 */
public enum OrganizationAffiliationRole: String, FHIRPrimitiveType {
	
	/// An organization that facilitates electronic clinical data exchange between entities
	case HIEHIO = "HIE/HIO"
	
	/// An organization such as a public health agency, community/social services provider, etc.
	case agency
	
	/// An organization providing diagnostic testing/laboratory services
	case diagnostics
	
	/// A type of non-ownership relationship between entities (encompasses partnerships, collaboration, joint ventures,
	/// etc.)
	case member
	
	/// An organization providing reimbursement, payment, or related services
	case payer
	
	/// An organization that delivers care services (e.g. hospitals, clinics, community and social services, etc.).
	case provider
	
	/// An organization providing research-related services such as conducting research, recruiting research
	/// participants, analyzing data, etc.
	case research
	
	/// An organization that provides medical supplies (e.g. medical devices, equipment, pharmaceutical products, etc.)
	case supplier
}
