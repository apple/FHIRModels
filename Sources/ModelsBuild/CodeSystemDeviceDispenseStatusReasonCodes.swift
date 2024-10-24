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
 DeviceDispense Status Reason Codes
 
 URL: http://hl7.org/fhir/CodeSystem/devicedispense-status-reason
 */
public enum DeviceDispenseStatusReasonCodes: String, FHIRPrimitiveType {
	
	/// The device was not dispensed because a contraindication was found - for example pregnancy, allergy to a device
	/// component...
	case contraindication
	
	/// The device was not dispensed because an incompatibility has been found with the device or between the device and
	/// other devices being used in the same context.
	case incompatibleDevice = "incompatible-device"
	
	/// The device was not dispensed because it is of-market - for example not authorized, withdrawn or recalled.
	case offMarket = "off-market"
	
	/// The device was not dispensed because the order has expired or been invalidated.
	case orderExpired = "order-expired"
	
	/// The device was not dispensed because it was not available.
	case outOfStock = "out-of-stock"
	
	/// The device not dispensed because there was a verbal order.
	case verbalOrder = "verbal-order"
}
