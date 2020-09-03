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
 Real world event relating to the schedule.
 
 URL: http://hl7.org/fhir/event-timing
 */
public enum EventTiming: String, FHIRPrimitiveType {
	
	/// Event occurs during the morning. The exact time is unspecified and established by institution convention or
	/// patient interpretation.
	case MORN = "MORN"
	
	/// Event occurs during the early morning. The exact time is unspecified and established by institution convention
	/// or patient interpretation.
	case mORNEarly = "MORN.early"
	
	/// Event occurs during the late morning. The exact time is unspecified and established by institution convention or
	/// patient interpretation.
	case mORNLate = "MORN.late"
	
	/// Event occurs around 12:00pm. The exact time is unspecified and established by institution convention or patient
	/// interpretation.
	case NOON = "NOON"
	
	/// Event occurs during the afternoon. The exact time is unspecified and established by institution convention or
	/// patient interpretation.
	case AFT = "AFT"
	
	/// Event occurs during the early afternoon. The exact time is unspecified and established by institution convention
	/// or patient interpretation.
	case aFTEarly = "AFT.early"
	
	/// Event occurs during the late afternoon. The exact time is unspecified and established by institution convention
	/// or patient interpretation.
	case aFTLate = "AFT.late"
	
	/// Event occurs during the evening. The exact time is unspecified and established by institution convention or
	/// patient interpretation.
	case EVE = "EVE"
	
	/// Event occurs during the early evening. The exact time is unspecified and established by institution convention
	/// or patient interpretation.
	case eVEEarly = "EVE.early"
	
	/// Event occurs during the late evening. The exact time is unspecified and established by institution convention or
	/// patient interpretation.
	case eVELate = "EVE.late"
	
	/// Event occurs during the night. The exact time is unspecified and established by institution convention or
	/// patient interpretation.
	case NIGHT = "NIGHT"
	
	/// Event occurs [offset] after subject goes to sleep. The exact time is unspecified and established by institution
	/// convention or patient interpretation.
	case PHS = "PHS"
}
