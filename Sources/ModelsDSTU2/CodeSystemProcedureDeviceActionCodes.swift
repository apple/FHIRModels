//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 1.0.2.7202
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
 Example value set for Procedure Device Action code (what happened to a device during a procedure.
 
 URL: http://hl7.org/fhir/device-action
 ValueSet: http://hl7.org/fhir/ValueSet/device-action
 */
public enum ProcedureDeviceActionCodes: String, FHIRPrimitiveType {
	
	/// The device was implanted in the patient during the procedure.
	case implanted = "implanted"
	
	/// The device was explanted from the patient during the procedure.
	case explanted = "explanted"
	
	/// The device remains in that patient, but its location, settings, or functionality was changed.
	case manipulated = "manipulated"
}
