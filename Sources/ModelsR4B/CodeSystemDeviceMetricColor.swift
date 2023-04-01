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
 Describes the typical color of representation.
 
 URL: http://hl7.org/fhir/metric-color
 ValueSet: http://hl7.org/fhir/ValueSet/metric-color
 */
public enum DeviceMetricColor: String, FHIRPrimitiveType {
	
	/// Color for representation - black.
	case black
	
	/// Color for representation - blue.
	case blue
	
	/// Color for representation - cyan.
	case cyan
	
	/// Color for representation - green.
	case green
	
	/// Color for representation - magenta.
	case magenta
	
	/// Color for representation - red.
	case red
	
	/// Color for representation - white.
	case white
	
	/// Color for representation - yellow.
	case yellow
}
