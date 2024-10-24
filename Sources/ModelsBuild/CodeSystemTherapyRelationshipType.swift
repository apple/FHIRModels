//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 6.0.0-ballot2
//  Copyright 2024 Apple Inc.
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
 Classification of relationship between a therapy and a contraindication or an indication.
 
 URL: http://hl7.org/fhir/therapy-relationship-type
 ValueSet: http://hl7.org/fhir/ValueSet/therapy-relationship-type
 */
public enum TherapyRelationshipType: String, FHIRPrimitiveType {
	
	/// Contraindicated unless the other therapy is given
	case contraindicatedExceptWith = "contraindicated-except-with"
	
	/// Only contraindicated if the other therapy is given
	case contraindicatedOnlyWith = "contraindicated-only-with"
	
	/// Indicated except when the other therapy is given
	case indicatedExceptWith = "indicated-except-with"
	
	/// Indicated only if the other therapy is planned to be given afterwards (prep)
	case indicatedOnlyAfter = "indicated-only-after"
	
	/// Indicated only if the other therapy was given before (follow-up)
	case indicatedOnlyBefore = "indicated-only-before"
	
	/// Indicated only when the other therapy is given (co-occurrent)
	case indicatedOnlyWith = "indicated-only-with"
	
	/// Indicated to replace the other therapy
	case replaceOtherTherapy = "replace-other-therapy"
	
	/// Indicated to replace the other contraindicated therapy.
	case replaceOtherTherapyContraindicated = "replace-other-therapy-contraindicated"
	
	/// Indicated to replace the other therapy not effective on patient
	case replaceOtherTherapyNotEffective = "replace-other-therapy-not-effective"
	
	/// Indicated to replace the other therapy not well tolerated by patient
	case replaceOtherTherapyNotTolerated = "replace-other-therapy-not-tolerated"
}
