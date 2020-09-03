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
 Codes to identify how UDI data was entered.
 
 URL: http://hl7.org/fhir/udi-entry-type
 ValueSet: http://hl7.org/fhir/ValueSet/udi-entry-type
 */
public enum UDIEntryType: String, FHIRPrimitiveType {
	
	/// a barcodescanner captured the data from the device label.
	case barcode = "barcode"
	
	/// An RFID chip reader captured the data from the device label.
	case rfid = "rfid"
	
	/// The data was read from the label by a person and manually entered. (e.g.  via a keyboard).
	case manual = "manual"
	
	/// The data originated from a patient's implant card and was read by an operator.
	case card = "card"
	
	/// The data originated from a patient source and was not directly scanned or read from a label or card.
	case selfReported = "self-reported"
	
	/// The UDI information was received electronically from the device through a communication protocol, such as the
	/// IEEE 11073 20601 version 4 exchange protocol over Bluetooth or USB.
	case electronicTransmission = "electronic-transmission"
	
	/// The method of data capture has not been determined.
	case unknown = "unknown"
}
