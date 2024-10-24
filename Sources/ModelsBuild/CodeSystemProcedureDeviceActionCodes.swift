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
 Example value set for Procedure Device Action code (what happened to a device during a procedure.
 
 URL: http://hl7.org/fhir/device-action
 */
public enum ProcedureDeviceActionCodes: String, FHIRPrimitiveType {
	
	/// The device was explanted from the patient during the procedure.
	case explanted
	
	/// The device was implanted in the patient during the procedure.
	case implanted
	
	/// The device remains in the patient, but its location, settings, or functionality was changed.
	case manipulated
}
