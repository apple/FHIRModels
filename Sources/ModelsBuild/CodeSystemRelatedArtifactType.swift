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
 The type of relationship to the related artifact.
 
 URL: http://hl7.org/fhir/related-artifact-type
 ValueSet: http://hl7.org/fhir/ValueSet/related-artifact-type
 */
public enum RelatedArtifactType: String, FHIRPrimitiveType {
	
	/// This artifact is amended with or changed by the target artifact. There is information in this artifact that
	/// should be functionally replaced with information in the target artifact.
	case amendedWith = "amended-with"
	
	/// This artifact amends or changes the target artifact. This artifact adds additional information that is
	/// functionally expected to replace information in the target artifact. This artifact replaces a part but not all
	/// of the target artifact.
	case amends
	
	/// This artifact has additional information in the target artifact.
	case appendedWith = "appended-with"
	
	/// This artifact adds additional information to the target artifact. The additional information does not replace or
	/// change information in the target artifact.
	case appends
	
	/// Bibliographic citation for papers, references, or other relevant material for the knowledge resource. This is
	/// intended to allow for citation of related material, but that was not necessarily specifically prepared in
	/// connection with this knowledge resource.
	case citation
	
	/// This artifact is cited by the target artifact.
	case citedBy = "cited-by"
	
	/// This artifact cites the target artifact. This may be a bibliographic citation for papers, references, or other
	/// relevant material for the knowledge resource. This is intended to allow for citation of related material, but
	/// that was not necessarily specifically prepared in connection with this knowledge resource.
	case cites
	
	/// This artifact has comments about it in the target artifact.  The type of comments may be expressed in the
	/// targetClassifier element such as reply, review, editorial, feedback, solicited, unsolicited, structured,
	/// unstructured.
	case commentIn = "comment-in"
	
	/// This artifact contains comments about the target artifact.
	case commentsOn = "comments-on"
	
	/// This artifact is composed of the target artifact. This artifact is constructed with the target artifact as a
	/// component. The target artifact is a part of this artifact. (A dataset is composed of data.).
	case composedOf = "composed-of"
	
	/// This artifact is contained in the target artifact. The target artifact is a data structure whose instances are
	/// collections of other objects.
	case containedIn = "contained-in"
	
	/// This artifact is a container in which the target artifact is contained. A container is a data structure whose
	/// instances are collections of other objects. (A database contains the dataset.).
	case contains
	
	/// This artifact has corrections to it in the target artifact. The target artifact identifies errors and
	/// replacement content for this artifact.
	case correctionIn = "correction-in"
	
	/// This artifact identifies errors and replacement content for the target artifact.
	case corrects
	
	/// This artifact depends on the target artifact. There is a requirement to use the target artifact in the creation
	/// or interpretation of this artifact.
	case dependsOn = "depends-on"
	
	/// This artifact is derived from the target artifact. This is intended to capture the relationship in which a
	/// particular knowledge resource is based on the content of another artifact, but is modified to capture either a
	/// different set of overall requirements, or a more specific set of requirements such as those involved in a
	/// particular institution or clinical setting. The artifact may be derived from one or more target artifacts.
	case derivedFrom = "derived-from"
	
	/// Additional documentation for the knowledge resource. This would include additional instructions on usage as well
	/// as additional information on clinical context or appropriateness.
	case documentation
	
	/// The target artifact is a summary of the justification for the knowledge resource including supporting evidence,
	/// relevant guidelines, or other clinically important information. This information is intended to provide a way to
	/// make the justification for the knowledge resource available to the consumer of interventions or results produced
	/// by the knowledge resource.
	case justification
	
	/// This artifact is a part of the target artifact. The target artifact is composed of this artifact (and possibly
	/// other artifacts).
	case partOf = "part-of"
	
	/// The previous version of the knowledge resource.
	case predecessor
	
	/// This artifact is replaced with or superseded by the target artifact. This artifact may be considered deprecated.
	case replacedWith = "replaced-with"
	
	/// This artifact replaces or supersedes the target artifact. The target artifact may be considered deprecated.
	case replaces
	
	/// This artifact is retracted by the target artifact. The content that was published in this artifact should be
	/// considered removed from publication and should no longer be considered part of the public record.
	case retractedBy = "retracted-by"
	
	/// This artifact retracts the target artifact. The content that was published in the target artifact should be
	/// considered removed from publication and should no longer be considered part of the public record.
	case retracts
	
	/// This artifact is a signature of the target artifact.
	case signs
	
	/// This artifact has characteristics in common with the target artifact. This relationship may be used in systems
	/// to “deduplicate” knowledge artifacts from different sources, or in systems to show “similar items”.
	case similarTo = "similar-to"
	
	/// The next version of the knowledge resource.
	case successor
	
	/// The target artifact contains additional documentation for the knowledge resource. This could include additional
	/// instructions on usage as well as additional information on clinical context or appropriateness.
	case supportedWith = "supported-with"
	
	/// This artifact provides additional documentation for the target artifact. This could include additional
	/// instructions on usage as well as additional information on clinical context or appropriateness.
	case supports
	
	/// This artifact was transformed into the target artifact (e.g., by format or language conversion).
	case transformedInto = "transformed-into"
	
	/// This artifact was generated by transforming a related artifact (e.g., format or language conversion), noted
	/// separately with the “transforms” relationship type. This transformation used the target artifact to inform the
	/// transformation. The target artifact may be a conversion script or translation guide.
	case transformedWith = "transformed-with"
	
	/// This artifact was generated by transforming the target artifact (e.g., format or language conversion). This is
	/// intended to capture the relationship in which a particular knowledge resource is based on the content of another
	/// artifact, but changes are only apparent in form and there is only one target artifact with the “transforms”
	/// relationship type.
	case transforms
}
