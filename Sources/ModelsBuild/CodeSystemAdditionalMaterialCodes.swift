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
 This value set includes sample additional material type codes.
 
 URL: http://hl7.org/fhir/additionalmaterials
 ValueSet: http://hl7.org/fhir/ValueSet/additionalmaterials
 */
public enum AdditionalMaterialCodes: String, FHIRPrimitiveType {
	
	/// XRay
	case xray = "xray"
	
	/// Image
	case image = "image"
	
	/// Email
	case email = "email"
	
	/// Model
	case model = "model"
	
	/// Document
	case document = "document"
	
	/// Other
	case other = "other"
}
