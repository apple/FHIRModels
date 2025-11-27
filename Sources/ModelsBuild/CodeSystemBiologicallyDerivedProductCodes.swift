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
 This code system is a subset of ISBT 128 Product Description Codes© published by ICCBBA as a part of the ISBT 128
 standard. These codes support characterization and classification of medical products of human origin inclusive of
 processing conditions such as additives, volumes and handling conditions.
 
 URL: http://hl7.org/fhir/biologicallyderived-productcodes
 ValueSet: http://hl7.org/fhir/ValueSet/biologicallyderived-productcodes
 */
public enum BiologicallyDerivedProductCodes: String, FHIRPrimitiveType {
	
	/// RED BLOOD CELLS|CPD>AS5/450mL/refg|Irr|ResLeu
	case E0398 = "e0398"
	
	/// RED BLOOD CELLS Apheresis product, ACD-A, Irradiated,1st container, stored at refrigeration temperatures
	case E4377 = "e4377"
	
	/// HPC, APHERESIS/Citrate/XX/refg/Mobilized
	case S1128 = "s1128"
	
	/// HPC, Apheresis product, 10% DMSO, mobilized, cryopreserved at <=-120C
	case S1194 = "s1194"
	
	/// HPC, Apheresis product, 5% DMSO, mobilized, cryopreserved at <=-120C
	case S1195 = "s1195"
	
	/// HPC, Apheresis product, third party components added, other additives added, mobilized, CD34 enriched, stored at
	/// refrigeration temperatures
	case S1310 = "s1310"
	
	/// HPC, Marrow, plasma reduced, stored at room temperature
	case S1398 = "s1398"
	
	/// HPC, MARROW|NS/XX/<=-150C|10% DMSO|3rd Party Comp:Yes|Cryopreserved|RBC reduced
	case S2598 = "s2598"
	
	/// BONE, FEMUR, Right, sterilized by radiation, stored at frozen temperatures
	case T1396 = "t1396"
}
