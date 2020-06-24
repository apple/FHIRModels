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
 Example codes indicating the reason for a current status.  Note that these are in no way complete and might not even be
 appropriate for some uses.
 
 URL: http://hl7.org/fhir/goal-status-reason
 ValueSet: http://hl7.org/fhir/ValueSet/goal-status-reason
 */
public enum GoalStatusReason: String, FHIRPrimitiveType {
	
	/// Goal suspended or ended because of a surgical procedure.
	case surgery = "surgery"
	
	/// Goal suspended or ended because of a significant life event (marital change, bereavement, etc.).
	case lifeEvent = "life-event"
	
	/// Goal has been superseded by a new goal.
	case replaced = "replaced"
	
	/// Patient wishes the goal to be set aside, at least temporarily.
	case patientRequest = "patient-request"
	
	/// Goal cannot be reached temporarily.
	case tempNotAttainable = "temp-not-attainable"
	
	/// Goal cannot be reached permanently.
	case permanentNotAttainable = "permanent-not-attainable"
	
	/// Goal cannot be reached due to financial barrier or reason.
	case financialBarrier = "financial-barrier"
	
	/// Goal cannot be reached due to a lack of transportation.
	case lackOfTransportation = "lack-of-transportation"
	
	/// Goal cannot be reached due to a lack of social support.
	case lackOfSocialSupport = "lack-of-social-support"
}
