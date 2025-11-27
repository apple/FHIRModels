//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 6.0.0-ballot3
//  Copyright 2025 Apple Inc.
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
 The environment type of the endpoint.
 
 URL: http://hl7.org/fhir/endpoint-environment
 ValueSet: http://hl7.org/fhir/ValueSet/endpoint-environment
 */
public enum EndpointEnvironment: String, FHIRPrimitiveType {
	
	/// Development environment used while building systems
	case dev
	
	/// Production environment and is expected to contain real data and should be protected appropriately
	case prod
	
	/// Staging environment typically used while preparing for a release to production
	case staging
	
	/// Test environment, it is not intended for production usage.
	case test
	
	/// Training environment, it is not intended for production usage and typically contains data specifically prepared
	/// for training usage.
	case train
}
