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
 Used for owner.
 
 URL: http://terminology.hl7.org/CodeSystem/medline-pubmed-owner
 ValueSet: http://hl7.org/fhir/ValueSet/medline-pubmed-owner
 */
public enum MedlinePubMedOwner: String, FHIRPrimitiveType {
	
	/// National Library of Medicine, Index Section.
	case NLM = "NLM"
	
	/// National Aeronautics and Space Administration.
	case NASA = "NASA"
	
	/// Population Information Program, Johns Hopkins School of Public Health.
	case PIP = "PIP"
	
	/// Kennedy Institute of Ethics, Georgetown University.
	case KIE = "KIE"
	
	/// National Information Center on Health Services Research and Health Care Technology, National Library of
	/// Medicine.
	case HSR = "HSR"
	
	/// History of Medicine Division, National Library of Medicine.
	case HMD = "HMD"
	
	/// Specialized Information Services Division, National Library of Medicine.
	case SIS = "SIS"
	
	/// Not used by National Library of Medicine; used by others to adapt the MEDLINE DTD for other applications.
	case NOTNLM = "NOTNLM"
}
