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
 This value set contract specific codes for status.
 
 URL: http://hl7.org/fhir/contract-status
 ValueSet: http://hl7.org/fhir/ValueSet/contract-status
 */
public enum ContractResourceStatusCodes: String, FHIRPrimitiveType {
	
	/// Contract is augmented with additional information to correct errors in a predecessor or to updated values in a
	/// predecessor. Usage: Contract altered within effective time. Precedence Order = 9. Comparable FHIR and v.3 status
	/// codes: revised; replaced.
	case amended = "amended"
	
	/// Contract is augmented with additional information that was missing from a predecessor Contract. Usage: Contract
	/// altered within effective time. Precedence Order = 9. Comparable FHIR and v.3 status codes: updated, replaced.
	case appended = "appended"
	
	/// Contract is terminated due to failure of the Grantor and/or the Grantee to fulfil one or more contract
	/// provisions. Usage: Abnormal contract termination. Precedence Order = 10. Comparable FHIR and v.3 status codes:
	/// stopped; failed; aborted.
	case cancelled = "cancelled"
	
	/// Contract is pended to rectify failure of the Grantor or the Grantee to fulfil contract provision(s). E.g.,
	/// Grantee complaint about Grantor's failure to comply with contract provisions. Usage: Contract pended. Precedence
	/// Order = 7. Comparable FHIR and v.3 status codes: on hold; pended; suspended.
	case disputed = "disputed"
	
	/// Contract was created in error. No Precedence Order.  Status may be applied to a Contract with any status.
	case enteredInError = "entered-in-error"
	
	/// Contract execution pending; may be executed when either the Grantor or the Grantee accepts the contract
	/// provisions by signing. I.e., where either the Grantor or the Grantee has signed, but not both. E.g., when an
	/// insurance applicant signs the insurers application, which references the policy. Usage: Optional first step of
	/// contract execution activity.  May be skipped and contracting activity moves directly to executed state.
	/// Precedence Order = 3. Comparable FHIR and v.3 status codes: draft; preliminary; planned; intended; active.
	case executable = "executable"
	
	/// Contract is activated for period stipulated when both the Grantor and Grantee have signed it. Usage: Required
	/// state for normal completion of contracting activity.  Precedence Order = 6. Comparable FHIR and v.3 status
	/// codes: accepted; completed.
	case executed = "executed"
	
	/// Contract execution is suspended while either or both the Grantor and Grantee propose and consider new or revised
	/// contract provisions. I.e., where the party which has not signed proposes changes to the terms.  E .g., a life
	/// insurer declines to agree to the signed application because the life insurer has evidence that the applicant,
	/// who asserted to being younger or a non-smoker to get a lower premium rate - but offers instead to agree to a
	/// higher premium based on the applicants actual age or smoking status. Usage: Optional contract activity between
	/// executable and executed state. Precedence Order = 4. Comparable FHIR and v.3 status codes: in progress; review;
	/// held.
	case negotiable = "negotiable"
	
	/// Contract is a proposal by either the Grantor or the Grantee. Aka - A Contract hard copy or electronic
	/// 'template', 'form' or 'application'. E.g., health insurance application; consent directive form. Usage:
	/// Beginning of contract negotiation, which may have been completed as a precondition because used for 0..*
	/// contracts. Precedence Order = 2. Comparable FHIR and v.3 status codes: requested; new.
	case offered = "offered"
	
	/// Contract template is available as the basis for an application or offer by the Grantor or Grantee. E.g., health
	/// insurance policy; consent directive policy.  Usage: Required initial contract activity, which may have been
	/// completed as a precondition because used for 0..* contracts. Precedence Order = 1. Comparable FHIR and v.3
	/// status codes: proposed; intended.
	case policy = "policy"
	
	///  Execution of the Contract is not completed because either or both the Grantor and Grantee decline to accept
	/// some or all of the contract provisions. Usage: Optional contract activity between executable and abnormal
	/// termination. Precedence Order = 5. Comparable FHIR and v.3 status codes:  stopped; cancelled.
	case rejected = "rejected"
	
	/// Beginning of a successor Contract at the termination of predecessor Contract lifecycle. Usage: Follows
	/// termination of a preceding Contract that has reached its expiry date. Precedence Order = 13. Comparable FHIR and
	/// v.3 status codes: superseded.
	case renewed = "renewed"
	
	/// A Contract that is rescinded.  May be required prior to replacing with an updated Contract. Comparable FHIR and
	/// v.3 status codes: nullified.
	case revoked = "revoked"
	
	/// Contract is reactivated after being pended because of faulty execution. *E.g., competency of the signer(s), or
	/// where the policy is substantially different from and did not accompany the application/form so that the
	/// applicant could not compare them. Aka - ''reactivated''. Usage: Optional stage where a pended contract is
	/// reactivated. Precedence Order = 8. Comparable FHIR and v.3 status codes: reactivated.
	case resolved = "resolved"
	
	/// Contract reaches its expiry date. It might or might not be renewed or renegotiated. Usage: Normal end of
	/// contract period. Precedence Order = 12. Comparable FHIR and v.3 status codes: Obsoleted.
	case terminated = "terminated"
}
