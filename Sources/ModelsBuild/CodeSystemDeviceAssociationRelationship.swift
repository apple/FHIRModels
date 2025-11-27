//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 6.0.0-ballot3
//  Copyright 2025 Apple Inc.
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
 DeviceAssociation Relationship Codes
 
 URL: http://hl7.org/fhir/deviceassociation-relationship
 ValueSet: http://hl7.org/fhir/ValueSet/deviceassociation-relationship
 */
public enum DeviceAssociationRelationship: String, FHIRPrimitiveType {
	
	/// The person operating the device.
	case `operator`
	
	/// The individual or organization who has responsibility for taking care of the device.
	case custodian
	
	/// The individual or organization that keeps the device in an appropriate condition.
	case maintainer
	
	/// Owner of the device.
	case owner
	
	/// The patient in which the device is implanted, or to which the device is associated.
	case patient
}
