//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.0.1-9346c8cc45
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
 How the system supports versioning for a resource.
 
 URL: http://hl7.org/fhir/versioning-policy
 ValueSet: http://hl7.org/fhir/ValueSet/versioning-policy
 */
public enum ResourceVersionPolicy: String, FHIRPrimitiveType {
	
	/// VersionId meta-property is not supported (server) or used (client).
	case noVersion = "no-version"
	
	/// VersionId meta-property is supported (server) or used (client).
	case versioned = "versioned"
	
	/// VersionId must be correct for updates (server) or will be specified (If-match header) for updates (client).
	case versionedUpdate = "versioned-update"
}
