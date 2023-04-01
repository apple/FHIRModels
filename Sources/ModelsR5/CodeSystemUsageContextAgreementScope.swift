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
 This codesystem defines codes describing the type of agreement represented by an artifact, for example for use in
 CanonicalResource.usageContext.
 
 URL: http://hl7.org/fhir/CodeSystem/usage-context-agreement-scope
 ValueSet: http://hl7.org/fhir/ValueSet/usage-context-agreement-scope
 */
public enum UsageContextAgreementScope: String, FHIRPrimitiveType {
	
	/// Sets contractual or business expectations for systems participating in a particular exchange community.
	case community
	
	/// Defines use-case-specific requirements for a specific business or health domain.  May vary in jurisdictional
	/// scope from international to small region and in business scope from broad to narrow.
	case domain
	
	/// Defines use-case-specific information or guidance that is relevant to a specific business or health domain but
	/// is not mandated for particular use.
	case knowledge
	
	/// Defines use-case independent foundational expectations for exchange within a particular country or jurisdiction.
	/// Should be accompanied by a jurisdiction.  Commonly used as a 'base' for more restrictive artifacts.
	case realmBase = "realm-base"
	
	/// Documents the specific capabilities of a single system as 'available' for purchase or use.  May have some
	/// variability reflecting options that can be configured.
	case systemDesign = "system-design"
	
	/// Documents the specific points of a single production system or endpoint.  This may be time-specific - i.e.
	/// reflecting the system 'as it is now' or 'as it was at some point in the past'.
	case systemImplementation = "system-implementation"
}
