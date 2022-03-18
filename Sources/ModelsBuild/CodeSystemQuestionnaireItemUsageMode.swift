//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.6.0-048af26
//  Copyright 2022 Apple Inc.
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
 None
 
 URL: http://hl7.org/fhir/questionnaire-usage-mode
 */
public enum QuestionnaireItemUsageMode: String, FHIRPrimitiveType {
	
	/// Render the item only when capturing data.
	case capture
	
	/// Render the item regardless of usage mode.
	case captureDisplay = "capture-display"
	
	/// Render the item when capturing data or when displaying a completed form and the item has been answered (or has
	/// child items that have been answered).
	case captureDisplayNonEmpty = "capture-display-non-empty"
	
	/// Render the item only when displaying a completed form.
	case display
	
	/// Render the item only when displaying a completed form and the item has been answered (or has child items that
	/// have been answered).
	case displayNonEmpty = "display-non-empty"
}
