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
 An HL7 administrative unit that owns artifacts in the FHIR specification
 
 URL: http://hl7.org/fhir/hl7-work-group
 ValueSet: http://hl7.org/fhir/ValueSet/hl7-work-group
 */
public enum HL7Workgroup: String, FHIRPrimitiveType {
	
	/// Community Based Collaborative Care (http://www.hl7.org/Special/committees/cbcc/index.cfm)
	case cbcc = "cbcc"
	
	/// Clinical Decision Support (http://www.hl7.org/Special/committees/dss/index.cfm)
	case cds = "cds"
	
	/// Clinical Quality Information (http://www.hl7.org/Special/committees/cqi/index.cfm)
	case cqi = "cqi"
	
	/// Clinical Genomics (http://www.hl7.org/Special/committees/clingenomics/index.cfm)
	case cg = "cg"
	
	/// Health Care Devices (http://www.hl7.org/Special/committees/healthcaredevices/index.cfm)
	case dev = "dev"
	
	/// Electronic Health Records (http://www.hl7.org/special/committees/ehr/index.cfm)
	case ehr = "ehr"
	
	/// FHIR Infrastructure (http://www.hl7.org/Special/committees/fiwg/index.cfm)
	case fhir = "fhir"
	
	/// Financial Management (http://www.hl7.org/Special/committees/fm/index.cfm)
	case fm = "fm"
	
	/// Health Standards Integration (http://www.hl7.org/Special/committees/hsi/index.cfm)
	case hsi = "hsi"
	
	/// Imaging Integration (http://www.hl7.org/Special/committees/imagemgt/index.cfm)
	case ii = "ii"
	
	/// Infrastructure And Messaging (http://www.hl7.org/special/committees/inm/index.cfm)
	case inm = "inm"
	
	/// Implementable Technology Specifications (http://www.hl7.org/special/committees/xml/index.cfm)
	case its = "its"
	
	/// Orders and Observations (http://www.hl7.org/Special/committees/orders/index.cfm)
	case oo = "oo"
	
	/// Patient Administration (http://www.hl7.org/Special/committees/pafm/index.cfm)
	case pa = "pa"
	
	/// Patient Care (http://www.hl7.org/Special/committees/patientcare/index.cfm)
	case pc = "pc"
	
	/// Public Health and Emergency Response (http://www.hl7.org/Special/committees/pher/index.cfm)
	case pher = "pher"
	
	/// Pharmacy (http://www.hl7.org/Special/committees/medication/index.cfm)
	case phx = "phx"
	
	/// Regulated Clinical Research Information Management (http://www.hl7.org/Special/committees/rcrim/index.cfm)
	case rcrim = "rcrim"
	
	/// Structured Documents (http://www.hl7.org/Special/committees/structure/index.cfm)
	case sd = "sd"
	
	/// Security (http://www.hl7.org/Special/committees/secure/index.cfm)
	case sec = "sec"
	
	/// US Realm Taskforce (http://wiki.hl7.org/index.php?title=US_Realm_Task_Force)
	case us = "us"
	
	/// Vocabulary (http://www.hl7.org/Special/committees/Vocab/index.cfm)
	case vocab = "vocab"
	
	/// Application Implementation and Design (http://www.hl7.org/Special/committees/java/index.cfm)
	case aid = "aid"
}
