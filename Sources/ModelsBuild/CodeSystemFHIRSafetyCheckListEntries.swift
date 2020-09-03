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
 The [check list items](http://hl7.org/fhir/safety.html) defined as part of the FHIR specification.
 
 URL: http://hl7.org/fhir/safety-entries
 ValueSet: http://hl7.org/fhir/ValueSet/safety-entries
 */
public enum FHIRSafetyCheckListEntries: String, FHIRPrimitiveType {
	
	/// For each resource that my system handles, my system handles the full [Life cycle](lifecycle.html) (status codes,
	/// currency issues, and erroneous entry status)
	case lifeCycle = "life-cycle"
	
	/// For each resource that my system handles, I've reviewed the [Modifier elements](conformance-
	/// rules.html#isModifier)
	case modifiers = "modifiers"
	
	/// My system checks for [modifierExtension](extensibility.html#modifierExtension) elements
	case modifierExtensions = "modifier-extensions"
	
	/// My system supports [elements labeled as 'MustSupport'](conformance-rules.html#mustSupport) in the
	/// [profiles](profiling.html) that apply to my system
	case mustSupport = "must-support"
	
	/// My system has documented how [distributed resource identification](managing.html#distributed) works in its
	/// relevant contexts of use, and where (and why) [contained](references.html#contained) resources are used
	case identity = "identity"
	
	/// My system manages lists of [current resources](lifecycle.html#current) correctly
	case current = "current"
	
	/// When other systems [return http errors from the RESTful API](http.html#summary) and
	/// [Operations](operations.html) (perhaps using [Operation Outcome](operationoutcome.html)), my system checks for
	/// them and handles them appropriately
	case errorChecks = "error-checks"
	
	/// My system ensures checks for patient links (and/or merges) and handles data that is linked to patients
	/// accordingly
	case linkMerge = "link-merge"
	
	/// My system publishes a [Capability Statement](capabilitystatement.html) with
	/// [StructureDefinitions](structuredefinition.html), [ValueSets](valueset.html), and
	/// [OperationDefinitions](operationdefinition.html), etc., so other implementers know how the system functions
	case csDeclare = "cs-declare"
	
	/// All resources in use are [valid](validation.html) against the base specification and the
	/// [profiles](profiling.html) that apply to my system (see note about the [correct run-time use of
	/// validation](validation.html#correct-use))
	case validChecked = "valid-checked"
	
	/// I've reviewed the [Observation](observation.html) resource, and understand how ```focus``` is a mechanism for
	/// observations to be about someone or something other than the patient or subject of record.
	case obsFocus = "obs-focus"
	
	/// My system checks for time zones and adjusts times appropriately. (note: time zones are extremely difficult to
	/// get correct - see [W3C Timezone Advice](https://www.w3.org/TR/timezone/), and note that some fields should be
	/// timezone corrected, and others should not be)
	case timeZone = "time-zone"
	
	/// My system renders dates safely for changes in culture and language (the date formats D-M-Y and M-D-Y are not
	/// differentiated for many dates, and this is a well-known source of confusion. Systems should use the month name,
	/// or otherwise be specific for each date when rendering, unless there is solid confidence that such confusion
	/// cannot arise, even in the future when information/narrative from resources will be shared much more widely)
	case dateRendering = "date-rendering"
	
	/// My system takes care to ensure that clients can (for servers) or will (for clients) find the information they
	/// need when content that might reasonably be exposed using more than one FHIR resource. Possible patterns: Support
	/// a single search across the applicable resources, or expose data through each applicable resource. See discussion
	/// on [Wiki Page](https://confluence.hl7.org/display/FHIR/Managing+Overlap+Between+Resources) for further
	/// information
	case crossResource = "cross-resource"
	
	/// My system will display warnings returned by the server to the user
	case displayWarnings = "display-warnings"
	
	/// My system checks whether the server processed all the requested search parameter, and is safe if servers ignore
	/// parameters (typically, either filters locally or warns the user)
	case searchParameters = "search-parameters"
	
	/// My system caters for [parameters that have missing values](search.html#missing) when doing search operations,
	/// and responds correctly to the client with regard to [erroneous search parameters](search.html#errors)
	case missingValues = "missing-values"
	
	/// My system includes appropriate default filters when searching based on patient context - e.g. filtering out
	/// entered-in-error records, filtering to only include active, living patients if appropriate, and clearly
	/// documents these (preferably including them in the self link for a search
	case defaultFilters = "default-filters"
	
	/// For each resource, I have checked whether resources can be deleted, and/or how records are marked as
	/// incorrect/no longer relevant
	case deletionCheck = "deletion-check"
	
	/// Deletion of records (or equivalent updates in status) flow through the system so any replicated copies are
	/// deleted/updated
	case deletionReplication = "deletion-replication"
	
	/// (If a server) my documentation about deleted resources is clear, and my test sandbox (if exists) has
	/// deleted/error record cases in the test data
	case deletionSupport = "deletion-support"
	
	/// My system checks that the right [Patient consent](consent.html) has been granted (where applicable)
	case checkConsent = "check-consent"
	
	/// My system sends an [Accounting of Disclosure](secpriv-module.html#AoD) to the consenter as requested when
	/// permitted actions on resources are performed using an [AuditEvent](auditevent.html) Resource
	case distributeAod = "distribute-aod"
	
	/// My system ensures that system clocks are synchronized using a protocol like NTP or SNTP, or my server is robust
	/// against clients that have the wrong clock set
	case checkClocks = "check-clocks"
	
	/// My system uses security methods for an API to authenticate where Domain Name System (DNS) responses are coming
	/// from and ensure that they are valid
	case checkDnsResponses = "check-dns-responses"
	
	/// Production exchange of patient or other sensitive data will always use some form of [encryption on the
	/// wire](security.html#http)
	case useEncryption = "use-encryption"
	
	/// Where resources are exchanged using [HTTP](security.html#http),
	/// [TLS](https://en.wikipedia.org/wiki/Transport_Layer_Security) should be utilized to protect the communications
	/// channel
	case useTls = "use-tls"
	
	/// Where resources are exchanged using email, [S/MIME](https://en.wikipedia.org/wiki/S/MIME) should be used to
	/// protect the end-to-end communication
	case useSmime = "use-smime"
	
	/// Production exchange should utilize recommendations for [Best-Current-Practice on TLS in BCP
	/// 195](https://tools.ietf.org/html/bcp195)
	case useTlsPerBcp195 = "use-tls-per-bcp195"
	
	/// My system utilizes a risk and use case [appropriate OAuth profile](security.html#oauth) (preferably [Smart App
	/// Launch](http://hl7.org/fhir/smart-app-launch)), with a [clear policy on authentication
	/// strength](security.html#authentication)
	case useOuath = "use-ouath"
	
	/// My system uses [OpenID Connect](https://openid.net/connect/) (or other suitable authentication protocol) to
	/// verify identity of end user, where it is necessary that end-users be identified to the client application, and
	/// has a clear policy on [identity proofing](secpriv-module.html#user)
	case useOpenidconnect = "use-openidconnect"
	
	/// My system applies appropriate access control to every request, using a combination of requester’s clearance
	/// (ABAC) and/or roles (RBAC)
	case useRbac = "use-rbac"
	
	/// My system considers [security labels](security-labels.html) on the affected resources when making access control
	/// decisions
	case useLabels = "use-labels"
	
	/// My system can [render narratives properly](narrative.html#css) and [securely](security.html#narrative)(where
	/// they are used)
	case renderNarratives = "render-narratives"
	
	/// My system [validates all input received](validation.html) (whether in resource format or other) from other
	/// actors so that it data is well-formed and does not contain content that would cause unwanted system behavior
	case checkValidation = "check=validation"
	
	/// My system makes the right [Provenance](provenance.html) statements and [AuditEvent](auditevent.html) logs, and
	/// uses the right [security labels](security-labels.html#core) where appropriate
	case useProvenance = "use-provenance"
	
	/// Server: CORS ([cross-origin resource sharing](http://enable-cors.org/)) is appropriately enabled (many clients
	/// are Javascript apps running in a browser)
	case enableCors = "enable-cors"
	
	/// JSON is supported (many clients are Javascript apps running in a browser; XML is inconvenient at best)
	case useJson = "use-json"
	
	/// JSON is returned correctly when errors happen (clients often don't handle HTML errors well)
	case jsonForErrors = "json-for-errors"
	
	/// The _format header is supported correctly
	case useFormatHeader = "use-format-header"
	
	/// Errors are trapped and an OperationOutcome returned
	case useOperationOutcome = "use-operation-outcome"
}
