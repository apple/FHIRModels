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
 This value set is provided as an example. The value set to instantiate this attribute should be drawn from a robust
 terminology code system that consists of or contains concepts to support the procedure performance process.
 
 URL: http://hl7.org/fhir/procedure-progress-status-code
 ValueSet: http://hl7.org/fhir/ValueSet/procedure-progress-status-codes
 */
public enum ProcedureProgressStatusCodes: String, FHIRPrimitiveType {
	
	/// A patient is in the Operating Room.
	case inOperatingRoom = "in-operating-room"
	
	/// The patient is prepared for a procedure.
	case prepared = "prepared"
	
	/// The patient is under anesthesia.
	case anesthesiaInduced = "anesthesia-induced"
	
	/// The patient has open incision(s).
	case openIncision = "open-incision"
	
	/// The patient has incision(s) closed.
	case closedIncision = "closed-incision"
	
	/// The patient is in the recovery room.
	case inRecoveryRoom = "in-recovery-room"
}
