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
 Base values for the order of the items in a list resource.
 
 URL: http://terminology.hl7.org/CodeSystem/list-order
 ValueSet: http://hl7.org/fhir/ValueSet/list-order
 */
public enum ListOrderCodes: String, FHIRPrimitiveType {
	
	/// The list was sorted by a user. The criteria the user used are not specified.
	case user = "user"
	
	/// The list was sorted by the system. The criteria the user used are not specified; define additional codes to
	/// specify a particular order (or use other defined codes).
	case system = "system"
	
	/// The list is sorted by the data of the event. This can be used when the list has items which are dates with past
	/// or future events.
	case eventDate = "event-date"
	
	/// The list is sorted by the date the item was added to the list. Note that the date added to the list is not
	/// explicit in the list itself.
	case entryDate = "entry-date"
	
	/// The list is sorted by priority. The exact method in which priority has been determined is not specified.
	case priority = "priority"
	
	/// The list is sorted alphabetically by an unspecified property of the items in the list.
	case alphabetic = "alphabetic"
	
	/// The list is sorted categorically by an unspecified property of the items in the list.
	case category = "category"
	
	/// The list is sorted by patient, with items for each patient grouped together.
	case patient = "patient"
}
