//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.0.1-9346c8cc45
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
 MedicationKnowledge Package Type Codes
 
 URL: http://terminology.hl7.org/CodeSystem/medicationknowledge-package-type
 ValueSet: http://hl7.org/fhir/ValueSet/medicationknowledge-package-type
 */
public enum MedicationKnowledgePackageTypeCodes: String, FHIRPrimitiveType {
	
	/// amp
	case amp = "amp"
	
	/// bag
	case bag = "bag"
	
	/// blstrpk
	case blstrpk = "blstrpk"
	
	/// bot
	case bot = "bot"
	
	/// box
	case box = "box"
	
	/// can
	case can = "can"
	
	/// cart
	case cart = "cart"
	
	/// disk
	case disk = "disk"
	
	/// doset
	case doset = "doset"
	
	/// jar
	case jar = "jar"
	
	/// jug
	case jug = "jug"
	
	/// minim
	case minim = "minim"
	
	/// nebamp
	case nebamp = "nebamp"
	
	/// ovul
	case ovul = "ovul"
	
	/// pch
	case pch = "pch"
	
	/// pkt
	case pkt = "pkt"
	
	/// sash
	case sash = "sash"
	
	/// strip
	case strip = "strip"
	
	/// tin
	case tin = "tin"
	
	/// tub
	case tub = "tub"
	
	/// tube
	case tube = "tube"
	
	/// vial
	case vial = "vial"
}
