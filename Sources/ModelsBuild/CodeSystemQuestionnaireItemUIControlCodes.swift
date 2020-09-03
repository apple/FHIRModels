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
 Starter set of user interface control/display mechanisms that might be used when rendering an item in a questionnaire.
 
 URL: http://hl7.org/fhir/questionnaire-item-control
 ValueSet: http://hl7.org/fhir/ValueSet/questionnaire-item-control
 */
public enum QuestionnaireItemUIControlCodes: String, FHIRPrimitiveType {
	
	/// UI controls relevant to organizing groups of questions
	case group = "group"
	
	/// Questions within the group should be listed sequentially
	case list = "list"
	
	/// Questions within the group are rows in the table with possible answers as columns.  Used for 'choice' questions.
	case table = "table"
	
	/// Questions within the group are columns in the table with possible answers as rows.  Used for 'choice' questions.
	case htable = "htable"
	
	/// Questions within the group are columns in the table with each group repetition as a row.  Used for single-answer
	/// questions.
	case gtable = "gtable"
	
	/// This table has one row - for the question.  Permitted answers are columns.  Used for choice questions.
	case atable = "atable"
	
	/// The group is to be continuously visible at the top of the questionnaire
	case header = "header"
	
	/// The group is to be continuously visible at the bottom of the questionnaire
	case footer = "footer"
	
	/// UI controls relevant to rendering questionnaire text items
	case text = "text"
	
	/// Text is displayed as a paragraph in a sequential position between sibling items (default behavior)
	case inline = "inline"
	
	/// Text is displayed immediately below or within the answer-entry area of the containing question item (typically
	/// as a guide for what to enter)
	case prompt = "prompt"
	
	/// Text is displayed adjacent (horizontally or vertically) to the answer space for the parent question, typically
	/// to indicate a unit of measure
	case unit = "unit"
	
	/// Text is displayed to the left of the set of answer choices or a scaling control for the parent question item to
	/// indicate the meaning of the 'lower' bound.  E.g. 'Strongly disagree'
	case lower = "lower"
	
	/// Text is displayed to the right of the set of answer choices or a scaling control for the parent question item to
	/// indicate the meaning of the 'upper' bound.  E.g. 'Strongly agree'
	case upper = "upper"
	
	/// Text is temporarily visible over top of an item if the mouse is positioned over top of the text for the
	/// containing item
	case flyover = "flyover"
	
	/// Text is displayed in a dialog box or similar control if invoked by pushing a button or some other UI-appropriate
	/// action to request 'help' for a question, group or the questionnaire as a whole (depending what the text is
	/// nested within)
	case help = "help"
	
	/// UI controls relevant to capturing question data
	case question = "question"
	
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
