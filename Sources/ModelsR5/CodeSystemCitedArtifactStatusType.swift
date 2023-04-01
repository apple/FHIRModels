//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 5.0.0
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
 Cited Artifact Status Type
 
 URL: http://hl7.org/fhir/cited-artifact-status-type
 ValueSet: http://hl7.org/fhir/ValueSet/cited-artifact-status-type
 */
public enum CitedArtifactStatusType: String, FHIRPrimitiveType {
	
	/// The content that was not published yet has been approved for publication by the publisher and/or editor.
	case accepted
	
	/// The content is considered complete for its current state by the content creator.
	case active
	
	/// The content has been approved for a state transition, with the focus of approval described in the text
	/// associated with this coding.
	case approved
	
	/// The content is retired or considered no longer current but still available as part of the public record.
	case archived
	
	/// The content was originally constructed or composed.
	case created
	
	/// The content is considered unfinished or incomplete and not representative of the current state desired by the
	/// content creator.
	case draft
	
	/// The content is in a state between the review(s) being completed and being published.
	case postReviewPrePublished = "post-review-pre-published"
	
	/// The content is awaiting assignment and delivery to reviewer(s).
	case preReview = "pre-review"
	
	/// The content is published but future changes to the published version are expected.
	case publishedEarlyForm = "published-early-form"
	
	/// The content is published and further changes to the content are not expected.
	case publishedFinalForm = "published-final-form"
	
	/// The content that was not published has been removed from consideration for publishing by a publisher or editor.
	case rejected
	
	/// The content that was published is removed from publication and should no longer be considered part of the public
	/// record.
	case retracted
	
	/// The content was sent to the publisher for consideration of publication.
	case submitted
	
	/// The content is in a state of being reviewed.
	case underReview = "under-review"
	
	/// The status of the content is not recorded in the metadata.
	case unknown
	
	/// The content that was not published has been removed from consideration for publishing by the submitter.
	case withdrawn
}
