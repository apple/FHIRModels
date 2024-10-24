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
 Used to code the format of the display string.
 
 URL: http://hl7.org/fhir/contributor-role
 ValueSet: http://hl7.org/fhir/ValueSet/contributor-role
 */
public enum ContributorRole: String, FHIRPrimitiveType {
	
	/// An entity primarily responsible for making the resource, often called author or creator
	case author
	
	/// Entity that revises or has authority to control the content
	case editor
	
	/// Entity that supports, approves, or advocates for the content
	case endorser
	
	/// Entity that supplies financial support
	case funder
	
	/// Entity that supplies information
	case informant
	
	/// Entity that makes the content available for public use
	case publisher
	
	/// Entity that examines the content, formally or informally, and suggests revisions or comments
	case reviewer
}
