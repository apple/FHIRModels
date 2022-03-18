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
 Starter set of user interface control/display mechanisms that might be used when rendering an item in a questionnaire.
 
 URL: http://hl7.org/fhir/questionnaire-item-control
 ValueSet: http://hl7.org/fhir/ValueSet/questionnaire-item-control
 */
public enum QuestionnaireItemUIControlCodes: String, FHIRPrimitiveType {
	
	/// A control which provides a list of potential matches based on text entered into a control.  Used for large
	/// choice sets where text-matching is an appropriate discovery mechanism.
	case autocomplete
	
	/// A control where choices are listed with a box beside them.  The box can be toggled to select or de-select a
	/// given choice.  Multiple selections may be possible.
	case checkBox = "check-box"
	
	/// UI controls relevant to rendering questionnaire display items
	case display
	
	/// A control where an item (or multiple items) can be selected from a list that is only displayed when the user is
	/// editing the field.
	case dropDown = "drop-down"
	
	/// Display item is temporarily visible over top of an item if the mouse is positioned over top of the text for the
	/// containing item
	case flyover
	
	/// The group is to be continuously visible at the bottom of the questionnaire
	case footer
	
	/// Child items of type='group' within the a 'grid' group are rows, and questions beneath the 'row' groups are
	/// organized as columns in the grid. The grid might be fully populated, but could be sparse. Questions may support
	/// different data types and/or different answer choices.
	case grid
	
	/// UI controls relevant to organizing groups of questions
	case group
	
	/// Questions within the group are columns in the table with each group repetition as a row.  Used for single-answer
	/// questions.
	case gtable
	
	/// The group is to be continuously visible at the top of the questionnaire
	case header
	
	/// Display item is rendered in a dialog box or similar control if invoked by pushing a button or some other UI-
	/// appropriate action to request 'help' for a question, group or the questionnaire as a whole (depending what the
	/// display item is nested within)
	case help
	
	/// Questions within the group are columns in the table with possible answers as rows.  Used for 'choice' questions.
	case htable
	
	/// Display item is rendered as a paragraph in a sequential position between sibling items (default behavior)
	case inline
	
	/// Display item is rendered in a dialog box or similar control if invoked by pushing a button or some other UI-
	/// appropriate action to request 'legal' info for a question, group or the questionnaire as a whole (depending what
	/// the display item is nested within)
	case legal
	
	/// Questions within the group should be listed sequentially
	case list
	
	/// A control where editing an item spawns a separate dialog box or screen permitting a user to navigate, filter or
	/// otherwise discover an appropriate match.  Useful for large choice sets where text matching is not an appropriate
	/// discovery mechanism.  Such screens must generally be tuned for the specific choice list structure.
	case lookup
	
	/// Display item is rendered to the left of the set of answer choices or a scaling control for the parent question
	/// item to indicate the meaning of the 'lower' bound.  E.g. 'Strongly disagree'
	case lower
	
	/// Indicates that the content within the group should appear as a logical "page" when rendering the form, such that
	/// all enabled items        within the page are displayed at once, but items in subsequent groups are not displayed
	/// until the user indicates a desire to move to the 'next' group.        (Header and footer items may still be
	/// displayed.) This designation may also influence pagination when printing questionnaires. If there are items at
	/// the same        level as a 'page' group that are listed before the 'page' group, they will be treated as a
	/// separate page.  Header and footer groups for a questionnaire will be rendered on all pages.
	case page
	
	/// UI controls relevant to capturing question data
	case question
	
	/// A control where choices are listed with a button beside them.  The button can be toggled to select or de-select
	/// a given choice.  Selecting one item deselects all others.
	case radioButton = "radio-button"
	
	/// A control where an axis is displayed between the high and low values and the control can be visually manipulated
	/// to select a value anywhere on the axis.
	case slider
	
	/// A control where a list of numeric or other ordered values can be scrolled through via arrows.
	case spinner
	
	/// Questions within the group are rows in the table with possible answers as columns.  Used for 'choice' questions.
	case table
	
	/// A control where a user can type in their answer freely.
	case textBox = "text-box"
	
	/// Display item is rendered adjacent (horizontally or vertically) to the answer space for the parent question,
	/// typically to indicate a unit of measure
	case unit
	
	/// Display item is rendered to the right of the set of answer choices or a scaling control for the parent question
	/// item to indicate the meaning of the 'upper' bound.  E.g. 'Strongly agree'
	case upper
}
