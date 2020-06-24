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
 A Master Patient Index (MPI) assessment of whether a candidate patient record is a match or not.
 
 URL: http://hl7.org/fhir/patient-mpi-match
 ValueSet: http://hl7.org/fhir/ValueSet/patient-mpi-match
 */
public enum MPIMatch: String, FHIRPrimitiveType {
	
	/// This record meets the MPI criteria to be automatically considered as a full match.
	case certain = "certain"
	
	/// This record is a close match, but not a certain match. Additional review (e.g. by a human) may be required
	/// before using this as a match.
	case probable = "probable"
	
	/// This record may be a matching one. Additional review (e.g. by a human) SHOULD be performed before using this as
	/// a match.
	case possible = "possible"
	
	/// This record is known not to be a match. Note that usually non-matching records are not returned, but in some
	/// cases records previously or likely considered as a match may specifically be negated by the MPI.
	case certainlyNot = "certainly-not"
}
