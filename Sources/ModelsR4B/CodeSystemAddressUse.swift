//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.3.0
//  Copyright 2023 Apple Inc.
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
 The use of an address.
 
 URL: http://hl7.org/fhir/address-use
 ValueSet: http://hl7.org/fhir/ValueSet/address-use
 */
public enum AddressUse: String, FHIRPrimitiveType {
	
	/// An address to be used to send bills, invoices, receipts etc.
	case billing
	
	/// A communication address at a home.
	case home
	
	/// This address is no longer in use (or was never correct but retained for records).
	case old
	
	/// A temporary address. The period can provide more detailed information.
	case temp
	
	/// An office address. First choice for business related contacts during business hours.
	case work
}
