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
 Codes identifying the rule combining. See XACML Combining algorithms  http://docs.oasis-
 open.org/xacml/3.0/xacml-3.0-core-spec-cos01-en.html
 
 URL: http://hl7.org/fhir/permission-rule-combining
 */
public enum PermissionRuleCombining: String, FHIRPrimitiveType {
	
	/// The deny overrides combining algorithm is intended for those cases where a deny decision should have priority
	/// over a permit decision.
	case denyOverrides = "deny-overrides"
	
	/// The “Deny-unless-permit” combining algorithm is intended for those cases where a permit decision should have
	/// priority over a deny decision, and an “Indeterminate” or “NotApplicable” must never be the result. It is
	/// particularly useful at the top level in a policy structure to ensure that a PDP will always return a definite
	/// “Permit” or “Deny” result.
	case denyUnlessPermit = "deny-unless-permit"
	
	/// The behavior of this algorithm is identical to that of the “Deny-overrides” rule-combining algorithm with one
	/// exception.  The order in which the collection of rules is evaluated SHALL match the order as listed in the
	/// permission.
	case orderedDenyOverrides = "ordered-deny-overrides"
	
	/// The behavior of this algorithm is identical to that of the “Permit-overrides” rule-combining algorithm with one
	/// exception.  The order in which the collection of rules is evaluated SHALL match the order as listed in the
	/// permission.
	case orderedPermitOverrides = "ordered-permit-overrides"
	
	/// The permit overrides combining algorithm is intended for those cases where a permit decision should have
	/// priority over a deny decision.
	case permitOverrides = "permit-overrides"
	
	/// The “Permit-unless-deny” combining algorithm is intended for those cases where a deny decision should have
	/// priority over a permit decision, and an “Indeterminate” or “NotApplicable” must never be the result. It is
	/// particularly useful at the top level in a policy structure to ensure that a PDP will always return a definite
	/// “Permit” or “Deny” result. This algorithm has the following behavior.
	case permitUnlessDeny = "permit-unless-deny"
}
