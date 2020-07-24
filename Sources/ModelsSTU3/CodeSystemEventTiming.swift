//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 3.0.1.11917
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
 ValueSet: http://hl7.org/fhir/ValueSet/event-timing
 */
public enum EventTiming: String, FHIRPrimitiveType {
	
	/// event occurs during the morning
	case MORN = "MORN"
	
	/// event occurs during the afternoon
	case AFT = "AFT"
	
	/// event occurs during the evening
	case EVE = "EVE"
	
	/// event occurs during the night
	case NIGHT = "NIGHT"
	
	/// event occurs [offset] after subject goes to sleep
	case PHS = "PHS"
}
