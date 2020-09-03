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
 The subcomponent classification of quality of evidence rating systems.
 
 URL: http://terminology.hl7.org/CodeSystem/certainty-subcomponent-type
 ValueSet: http://hl7.org/fhir/ValueSet/certainty-subcomponent-type
 */
public enum CertaintySubcomponentType: String, FHIRPrimitiveType {
	
	/// methodologic concerns reducing internal validity.
	case riskOfBias = "RiskOfBias"
	
	/// concerns that findings are not similar enough to support certainty.
	case inconsistency = "Inconsistency"
	
	/// concerns reducing external validity.
	case indirectness = "Indirectness"
	
	/// fuzzy or wide variability.
	case imprecision = "Imprecision"
	
	/// likelihood that what is published misrepresents what is available to publish.
	case publicationBias = "PublicationBias"
	
	/// higher certainty due to dose response relationship.
	case doseResponseGradient = "DoseResponseGradient"
	
	/// higher certainty due to risk of bias in opposite direction.
	case plausibleConfounding = "PlausibleConfounding"
	
	/// higher certainty due to large effect size.
	case largeEffect = "LargeEffect"
}
