//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.3.0
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
 This value set includes a smattering of FDI tooth surface codes.
 
 URL: http://terminology.hl7.org/CodeSystem/FDI-surface
 */
public enum SurfaceCodes: String, FHIRPrimitiveType {
	
	/// The surface of a posterior tooth facing the cheeks.
	case B
	
	/// The surface of a tooth that faces away from the midline of the face.
	case D
	
	/// The Distoincisal surfaces of a tooth.
	case DI
	
	/// The Distoclusal surfaces of a tooth.
	case DO
	
	/// The biting edge of anterior teeth.
	case I
	
	/// The surface of a tooth facing the tongue.
	case L
	
	/// The surface of a tooth that is closest to the midline (middle) of the face.
	case M
	
	/// The Mesioclusal surfaces of a tooth.
	case MO
	
	/// The Mesioclusodistal surfaces of a tooth.
	case MOD
	
	/// The chewing surface of posterior teeth.
	case O
	
	/// The surface of a tooth facing the lips.
	case V
}
