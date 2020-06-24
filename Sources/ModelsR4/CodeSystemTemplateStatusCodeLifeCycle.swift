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
 Life cycle of the Status Code of a Template Design (Version)
 
 URL: urn:oid:2.16.840.1.113883.3.1937.98.5.8
 ValueSet: urn:oid:2.16.840.1.113883.3.1937.98.11.8
 */
public enum TemplateStatusCodeLifeCycle: String, FHIRPrimitiveType {
	
	/// Design is under development (nascent).
	case draft = "draft"
	
	/// Design is completed and is being reviewed.
	case pending = "pending"
	
	/// Design has been deemed fit for the intended purpose and is published by the governance group.
	case active = "active"
	
	/// Design is active, but is under review. The review may result in a change to the design. The change may
	/// necessitate a new version to be created. This in turn may result in the prior version of the template to be
	/// retired. Alternatively, the review may result in a change to the design that does not require a new version to
	/// be created, or it may result in no change to the design at all.
	case review = "review"
	
	/// A drafted design is determined to be erroneous or not fit for intended purpose and is discontinued before ever
	/// being published in an active state.
	case cancelled = "cancelled"
	
	/// A previously drafted design is determined to be erroneous or not fit for intended purpose and is discontinued
	/// before ever being published for consideration in a pending state.
	case rejected = "rejected"
	
	/// A previously active design is discontinued from use. It should no longer be used for future designs, but for
	/// historical purposes may be used to process data previously recorded using this design. A newer design may or may
	/// not exist. The design is published in the retired state.
	case retired = "retired"
	
	/// A design is determined to be erroneous or not fit for the intended purpose and should no longer be used, even
	/// for historical purposes. No new designs can be developed for this template. The associated template no longer
	/// needs to be published, but if published, is shown in the terminated state.
	case terminated = "terminated"
}
