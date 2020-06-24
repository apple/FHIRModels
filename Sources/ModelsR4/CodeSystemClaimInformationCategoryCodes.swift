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
 This value set includes sample Information Category codes.
 
 URL: http://terminology.hl7.org/CodeSystem/claiminformationcategory
 ValueSet: http://hl7.org/fhir/ValueSet/claim-informationcategory
 */
public enum ClaimInformationCategoryCodes: String, FHIRPrimitiveType {
	
	/// Codes conveying additional situation and condition information.
	case info = "info"
	
	/// Discharge status and discharge to locations.
	case discharge = "discharge"
	
	/// Period, start or end dates of aspects of the Condition.
	case onset = "onset"
	
	/// Nature and date of the related event e.g. Last exam, service, X-ray etc.
	case related = "related"
	
	/// Insurance policy exceptions.
	case exception = "exception"
	
	/// Materials being forwarded, e.g. Models, molds, images, documents.
	case material = "material"
	
	/// Materials attached such as images, documents and resources.
	case attachment = "attachment"
	
	/// Teeth which are missing for any reason, for example: prior extraction, never developed.
	case missingtooth = "missingtooth"
	
	/// The type of prosthesis and date of supply if a previously supplied prosthesis.
	case prosthesis = "prosthesis"
	
	/// Other information identified by the type.system.
	case other = "other"
	
	/// An indication that the patient was hospitalized, the period if known otherwise a Yes/No (boolean).
	case hospitalized = "hospitalized"
	
	/// An indication that the patient was unable to work, the period if known otherwise a Yes/No (boolean).
	case employmentimpacted = "employmentimpacted"
	
	/// The external cause of an illness or injury.
	case externalcause = "externalcause"
	
	/// The reason for the patient visit.
	case patientreasonforvisit = "patientreasonforvisit"
}
