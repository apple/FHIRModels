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
 This value set includes CoverageEligibilityResponse Auth Support codes.
 
 URL: http://terminology.hl7.org/CodeSystem/coverageeligibilityresponse-ex-auth-support
 */
public enum CoverageEligibilityResponseAuthSupportCodes: String, FHIRPrimitiveType {
	
	/// A formal accident report as would be filed with police or a simlar official body.
	case accidentreport
	
	/// A request or authorization for diagnostic imaging.
	case diagnosticimageorder
	
	/// A report on diagnostic image(s).
	case diagnosticimagereport
	
	/// A request or authorization for laboratory diagnostic tests.
	case laborder
	
	/// A report on laboratory diagnostic test(s).
	case labreport
	
	/// A physical model of the affected area.
	case model
	
	/// A photograph of the affected area.
	case picture
	
	/// A report from a licensed professional regarding the siutation, condition or proposed treatment.
	case professionalreport
}
