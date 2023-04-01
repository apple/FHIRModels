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
 Biologically derived product dispense - performer function
 
 URL: http://hl7.org/fhir/CodeSystem/biologicallyderivedproductdispense-performer-function
 ValueSet: http://hl7.org/fhir/ValueSet/biologicallyderivedproductdispense-performer-function
 */
public enum BiologicallyDerivedProductDispensePerformerFunction: String, FHIRPrimitiveType {
	
	/// Antibody identification procedure
	case antibodyIdentification = "antibody-identification"
	
	/// Antibody screening procedure
	case antibodyScreen = "antibody-screen"
	
	/// Serological or electronic crossmatch procedure
	case crossmatch
	
	/// ABO and RhD blood grouping procedure
	case groupAndType = "group-and-type"
	
	/// Receipt of product for clinical application
	case receipt
	
	/// Approval for release for clinical application
	case release
	
	/// Transfer of product from the supply department to the site of clinical use
	case transport
}
