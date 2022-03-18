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
 NLM codes Internet or Print.
 
 URL: http://terminology.hl7.org/CodeSystem/cited-medium
 ValueSet: http://hl7.org/fhir/ValueSet/cited-medium
 */
public enum CitedMedium: String, FHIRPrimitiveType {
	
	/// Online publication in a periodic release. Used to match NLM JournalIssue CitedMedium code for online version.
	case internet
	
	/// Online publication without any periodic release. Used for article specific publication date which could be the
	/// same as or different from journal issue publication date.
	case internetWithoutIssue = "internet-without-issue"
	
	/// Publication in a physical device for electronic data storage, organized in issues for periodic release.
	case offlineDigitalStorage = "offline-digital-storage"
	
	/// Publication in a physical device for electronic data storage, without any periodic release.
	case offlineDigitalStorageWithoutIssue = "offline-digital-storage-without-issue"
	
	/// Print publication in a periodic release. Used to match NLM JournalIssue CitedMedium code for print version.
	case print
	
	/// Print publication without any periodic release.
	case printWithoutIssue = "print-without-issue"
}
