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
 The type of trigger.
 
 URL: http://hl7.org/fhir/trigger-type
 ValueSet: http://hl7.org/fhir/ValueSet/trigger-type
 */
public enum TriggerType: String, FHIRPrimitiveType {
	
	/// The trigger occurs in response to a specific named event, and no other information about the trigger is
	/// specified. Named events are completely pre-coordinated, and the formal semantics of the trigger are not
	/// provided.
	case namedEvent = "named-event"
	
	/// The trigger occurs at a specific time or periodically as described by a timing or schedule. A periodic event
	/// cannot have any data elements, but may have a name assigned as a shorthand for the event.
	case periodic = "periodic"
	
	/// The trigger occurs whenever data of a particular type is changed in any way, either added, modified, or removed.
	case dataChanged = "data-changed"
	
	/// The trigger occurs whenever data of a particular type is added.
	case dataAdded = "data-added"
	
	/// The trigger occurs whenever data of a particular type is modified.
	case dataModified = "data-modified"
	
	/// The trigger occurs whenever data of a particular type is removed.
	case dataRemoved = "data-removed"
	
	/// The trigger occurs whenever data of a particular type is accessed.
	case dataAccessed = "data-accessed"
	
	/// The trigger occurs whenever access to data of a particular type is completed.
	case dataAccessEnded = "data-access-ended"
}
