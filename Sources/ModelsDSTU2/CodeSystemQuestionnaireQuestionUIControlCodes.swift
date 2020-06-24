//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 1.0.2.7202
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
 Starter set of user interface controls that might be used when capturing data from Questionnaire questions.
 
 URL: http://hl7.org/fhir/questionnaire-question-control
 ValueSet: http://hl7.org/fhir/ValueSet/questionnaire-question-control
 */
public enum QuestionnaireQuestionUIControlCodes: String, FHIRPrimitiveType {
	
	/// A control which provides a list of potential matches based on text entered into a control.  Used for large
	/// choice sets where text-matching is an appropriate discovery mechanism.
	case autocomplete = "autocomplete"
	
	/// A control where an item (or multiple items) can be selected from a list that is only displayed when the user is
	/// editing the field.
	case dropDown = "drop-down"
	
	/// A control where choices are listed with a box beside them.  The box can be toggled to select or de-select a
	/// given choice.  Multiple selections may be possible.
	case checkBox = "check-box"
	
	/// A control where editing an item spawns a separate dialog box or screen permitting a user to navigate, filter or
	/// otherwise discover an appropriate match.  Useful for large choice sets where text matching is not an appropriate
	/// discovery mechanism.  Such screens must generally be tuned for the specific choice list structure.
	case lookup = "lookup"
	
	/// A control where choices are listed with a button beside them.  The button can be toggled to select or de-select
	/// a given choice.  Selecting one item deselects all others.
	case radioButton = "radio-button"
	
	/// A control where an axis is displayed between the high and low values and the control can be visually manipulated
	/// to select a value anywhere on the axis.
	case slider = "slider"
	
	/// A control where a list of numeric or other ordered values can be scrolled through via arrows.
	case spinner = "spinner"
	
	/// A control where a user can type in their answer freely.
	case textBox = "text-box"
}
