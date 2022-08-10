//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.6.0-048af26
//  Copyright 2022 Apple Inc.
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
 Contact type for a Medicinal Product.
 
 URL: http://hl7.org/fhir/medicinal-product-contact-type
 ValueSet: http://hl7.org/fhir/ValueSet/medicinal-product-contact-type
 */
public enum ProductContactType: String, FHIRPrimitiveType {
	
	/// Qualified Person Responsible for Pharmacovigilance
	case QPPV
	
	/// Pharmacovigilance Enquiry Information
	case pVEnquiries = "PVEnquiries"
	
	/// Person/Company authorized for Communication between MAH and Authorities after Authorization
	case procedureContactAfter = "ProcedureContactAfter"
	
	/// Person/Company authorized for Communication on behalf of the Applicant during the Procedure
	case procedureContactDuring = "ProcedureContactDuring"
	
	/// Proposed Marketing Authorization Holder/Person
	case proposedMAH = "ProposedMAH"
}
