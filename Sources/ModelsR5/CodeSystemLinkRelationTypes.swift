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
 Link Relation Types defined at https://www.iana.org/assignments/link-relations/link-relations.xhtml#link-relations-1
 
 URL: http://hl7.org/fhir/CodeSystem/iana-link-relations
 */
public enum LinkRelationTypes: String, FHIRPrimitiveType {
	
	/// Refers to a resource that is the subject of the link's context.
	case about
	
	/// Asserts that the link target provides an access control description for the link context.
	case acl
	
	/// Refers to a substitute for this context
	case alternate
	
	/// Used to reference alternative content that uses the AMP profile of the HTML format.
	case amphtml
	
	/// Refers to an appendix.
	case appendix
	
	/// Refers to an icon for the context. Synonym for icon.
	case appleTouchIcon = "apple-touch-icon"
	
	/// Refers to a launch screen for the context.
	case appleTouchStartupImage = "apple-touch-startup-image"
	
	/// Refers to a collection of records, documents, or other
	///       materials of historical interest.
	case archives
	
	/// Refers to the context's author.
	case author
	
	/// Identifies the entity that blocks access to a resource
	///       following receipt of a legal demand.
	case blockedBy = "blocked-by"
	
	/// Gives a permanent link to use for bookmarking purposes.
	case bookmark
	
	/// Designates the preferred version of a resource (the IRI and its contents).
	case canonical
	
	/// Refers to a chapter in a collection of resources.
	case chapter
	
	/// Indicates that the link target is preferred over the link context for the purpose of permanent citation.
	case citeAs = "cite-as"
	
	/// The target IRI points to a resource which represents the collection resource for the context IRI.
	case collection
	
	/// Refers to a table of contents.
	case contents
	
	/// The document linked to was later converted to the
	///       document that contains this link relation.  For example, an RFC can
	///       have a link to the Internet-Draft that became the RFC; in that case,
	///       the link relation would be "convertedFrom".
	case convertedFrom
	
	/// Refers to a copyright statement that applies to the
	///     link's context.
	case copyright
	
	/// The target IRI points to a resource where a submission form can be obtained.
	case createForm = "create-form"
	
	/// Refers to a resource containing the most recent
	///       item(s) in a collection of resources.
	case current
	
	/// Refers to a resource providing information about the
	///       link's context.
	case describedby
	
	/// The relationship A 'describes' B asserts that
	///       resource A provides a description of resource B. There are no
	///       constraints on the format or representation of either A or B,
	///       neither are there any further constraints on either resource.
	case describes
	
	/// Refers to a list of patent disclosures made with respect to
	///       material for which 'disclosure' relation is specified.
	case disclosure
	
	/// Used to indicate an origin that will be used to fetch required
	///       resources for the link context, and that the user agent ought to resolve
	///       as early as possible.
	case dnsPrefetch = "dns-prefetch"
	
	/// Refers to a resource whose available representations
	///       are byte-for-byte identical with the corresponding representations of
	///       the context IRI.
	case duplicate
	
	/// Refers to a resource that can be used to edit the
	///       link's context.
	case edit
	
	/// The target IRI points to a resource where a submission form for
	///       editing associated resource can be obtained.
	case editForm = "edit-form"
	
	/// Refers to a resource that can be used to edit media
	///       associated with the link's context.
	case editMedia = "edit-media"
	
	/// Identifies a related resource that is potentially
	///       large and might require special handling.
	case enclosure
	
	/// Refers to a resource that is not part of the same site as the current context.
	case external
	
	/// An IRI that refers to the furthest preceding resource
	///     in a series of resources.
	case first
	
	/// Refers to a glossary of terms.
	case glossary
	
	/// Refers to context-sensitive help.
	case help
	
	/// Refers to a resource hosted by the server indicated by
	///       the link context.
	case hosts
	
	/// Refers to a hub that enables registration for
	///     notification of updates to the context.
	case hub
	
	/// Refers to an icon representing the link's context.
	case icon
	
	/// Refers to an index.
	case index
	
	/// refers to a resource associated with a time interval that ends before the beginning of the time interval
	/// associated with the context resource
	case intervalAfter
	
	/// refers to a resource associated with a time interval that begins after the end of the time interval associated
	/// with the context resource
	case intervalBefore
	
	/// refers to a resource associated with a time interval that begins after the beginning of the time interval
	/// associated with the context resource, and ends before the end of the time interval associated with the context
	/// resource
	case intervalContains
	
	/// refers to a resource associated with a time interval that begins after the end of the time interval associated
	/// with the context resource, or ends before the beginning of the time interval associated with the context
	/// resource
	case intervalDisjoint
	
	/// refers to a resource associated with a time interval that begins before the beginning of the time interval
	/// associated with the context resource, and ends after the end of the time interval associated with the context
	/// resource
	case intervalDuring
	
	/// refers to a resource associated with a time interval whose beginning coincides with the beginning of the time
	/// interval associated with the context resource, and whose end coincides with the end of the time interval
	/// associated with the context resource
	case intervalEquals
	
	/// refers to a resource associated with a time interval that begins after the beginning of the time interval
	/// associated with the context resource, and whose end coincides with the end of the time interval associated with
	/// the context resource
	case intervalFinishedBy
	
	/// refers to a resource associated with a time interval that begins before the beginning of the time interval
	/// associated with the context resource, and whose end coincides with the end of the time interval associated with
	/// the context resource
	case intervalFinishes
	
	/// refers to a resource associated with a time interval that begins before or is coincident with the beginning of
	/// the time interval associated with the context resource, and ends after or is coincident with the end of the time
	/// interval associated with the context resource
	case intervalIn
	
	/// refers to a resource associated with a time interval whose beginning coincides with the end of the time interval
	/// associated with the context resource
	case intervalMeets
	
	/// refers to a resource associated with a time interval whose end coincides with the beginning of the time interval
	/// associated with the context resource
	case intervalMetBy
	
	/// refers to a resource associated with a time interval that begins before the beginning of the time interval
	/// associated with the context resource, and ends after the beginning of the time interval associated with the
	/// context resource
	case intervalOverlappedBy
	
	/// refers to a resource associated with a time interval that begins before the end of the time interval associated
	/// with the context resource, and ends after the end of the time interval associated with the context resource
	case intervalOverlaps
	
	/// refers to a resource associated with a time interval whose beginning coincides with the beginning of the time
	/// interval associated with the context resource, and ends before the end of the time interval associated with the
	/// context resource
	case intervalStartedBy
	
	/// refers to a resource associated with a time interval whose beginning coincides with the beginning of the time
	/// interval associated with the context resource, and ends after the end of the time interval associated with the
	/// context resource
	case intervalStarts
	
	/// The target IRI points to a resource that is a member of the collection represented by the context IRI.
	case item
	
	/// An IRI that refers to the furthest following resource
	///       in a series of resources.
	case last
	
	/// Points to a resource containing the latest (e.g.,
	///       current) version of the context.
	case latestVersion = "latest-version"
	
	/// Refers to a license associated with this context.
	case license
	
	/// The link target of a link with the "linkset" relation
	///       type provides a set of links, including links in which the link
	///       context of the link participates.
	case linkset
	
	/// Refers to further information about the link's context,
	///       expressed as a LRDD ("Link-based Resource Descriptor Document")
	///       resource.  See  for information about
	///       processing this relation type in host-meta documents. When used
	///       elsewhere, it refers to additional links and other metadata.
	///       Multiple instances indicate additional LRDD resources. LRDD
	///       resources MUST have an "application/xrd+xml" representation, and
	///       MAY have others.
	case lrdd
	
	/// Links to a manifest file for the context.
	case manifest
	
	/// Refers to a mask that can be applied to the icon for the context.
	case maskIcon = "mask-icon"
	
	/// Refers to a feed of personalised media recommendations relevant to the link context.
	case mediaFeed = "media-feed"
	
	/// The Target IRI points to a Memento, a fixed resource that will not change state anymore.
	case memento
	
	/// Links to the context's Micropub endpoint.
	case micropub
	
	/// Refers to a module that the user agent is to preemptively fetch and store for use in the current context.
	case modulepreload
	
	/// Refers to a resource that can be used to monitor changes in an HTTP resource.
	case monitor
	
	/// Refers to a resource that can be used to monitor changes in a specified group of HTTP resources.
	case monitorGroup = "monitor-group"
	
	/// Indicates that the link's context is a part of a series, and
	///       that the next in the series is the link target.
	case next
	
	/// Refers to the immediately following archive resource.
	case nextArchive = "next-archive"
	
	/// Indicates that the context’s original author or publisher does not endorse the link target.
	case nofollow
	
	/// Indicates that any newly created top-level browsing context which results from following the link will not be an
	/// auxiliary browsing context.
	case noopener
	
	/// Indicates that no referrer information is to be leaked when following the link.
	case noreferrer
	
	/// Indicates that any newly created top-level browsing context which results from following the link will be an
	/// auxiliary browsing context.
	case opener
	
	/// Refers to an OpenID Authentication server on which the context relies for an assertion that the end user
	/// controls an Identifier.
	case openid2Local_id = "openid2.local_id"
	
	/// Refers to a resource which accepts OpenID Authentication protocol messages for the context.
	case openid2Provider = "openid2.provider"
	
	/// The Target IRI points to an Original Resource.
	case original
	
	/// Refers to a P3P privacy policy for the context.
	case p3Pv1 = "P3Pv1"
	
	/// Indicates a resource where payment is accepted.
	case payment
	
	/// Gives the address of the pingback resource for the link context.
	case pingback
	
	/// Used to indicate an origin that will be used to fetch required
	///       resources for the link context. Initiating an early connection, which
	///       includes the DNS lookup, TCP handshake, and optional TLS negotiation,
	///       allows the user agent to mask the high latency costs of establishing a
	///       connection.
	case preconnect
	
	/// Points to a resource containing the predecessor
	///       version in the version history.
	case predecessorVersion = "predecessor-version"
	
	/// The prefetch link relation type is used to identify a resource
	///       that might be required by the next navigation from the link context, and
	///       that the user agent ought to fetch, such that the user agent can deliver a
	///       faster response once the resource is requested in the future.
	case prefetch
	
	/// Refers to a resource that should be loaded early in the
	///       processing of the link's context, without blocking rendering.
	case preload
	
	/// Used to identify a resource that might be required by the next
	///       navigation from the link context, and that the user agent ought to fetch
	///       and execute, such that the user agent can deliver a faster response once
	///       the resource is requested in the future.
	case prerender
	
	/// Indicates that the link's context is a part of a series, and
	///       that the previous in the series is the link target.
	case prev
	
	/// Refers to the immediately preceding archive resource.
	case prevArchive = "prev-archive"
	
	/// Refers to a resource that provides a preview of the link's context.
	case preview
	
	/// Refers to the previous resource in an ordered series
	///       of resources.  Synonym for "prev".
	case previous
	
	/// Refers to a privacy policy associated with the link's context.
	case privacyPolicy = "privacy-policy"
	
	/// Identifying that a resource representation conforms
	/// to a certain profile, without affecting the non-profile semantics
	/// of the resource representation.
	case profile
	
	/// Links to a publication manifest. A manifest represents
	///       structured information about a publication, such as informative metadata,
	///       a list of resources, and a default reading order.
	case publication
	
	/// Identifies a related resource.
	case related
	
	/// Identifies a resource that is a reply to the context
	///       of the link.
	case replies
	
	/// Identifies the root of RESTCONF API as configured on this HTTP server.
	///       The "restconf" relation defines the root of the API defined in RFC8040.
	///       Subsequent revisions of RESTCONF will use alternate relation values to support
	///       protocol versioning.
	case restconf
	
	/// The resource identified by the link target provides an input value to an
	///     instance of a rule, where the resource which represents the rule instance is
	///     identified by the link context.
	case ruleinput
	
	/// Refers to a resource that can be used to search through
	///       the link's context and related resources.
	case search
	
	/// Refers to a section in a collection of resources.
	case section
	
	/// Conveys an identifier for the link's context.
	case selfCase = "self"
	
	/// Indicates a URI that can be used to retrieve a
	///       service document.
	case service
	
	/// Identifies service description for the context that
	///       is primarily intended for consumption by machines.
	case serviceDesc = "service-desc"
	
	/// Identifies service documentation for the context that
	///       is primarily intended for human consumption.
	case serviceDoc = "service-doc"
	
	/// Identifies general metadata for the context that is
	///       primarily intended for consumption by machines.
	case serviceMeta = "service-meta"
	
	/// Refers to a resource that is within a context that is
	/// 		sponsored (such as advertising or another compensation agreement).
	case sponsored
	
	/// Refers to the first resource in a collection of
	///       resources.
	case start
	
	/// Identifies a resource that represents the context's
	///       status.
	case status
	
	/// Refers to a stylesheet.
	case stylesheet
	
	/// Refers to a resource serving as a subsection in a
	///       collection of resources.
	case subsection
	
	/// Points to a resource containing the successor version
	///       in the version history.
	case successorVersion = "successor-version"
	
	/// Identifies a resource that provides information about
	///       the context's retirement policy.
	case sunset
	
	/// Gives a tag (identified by the given address) that applies to
	///       the current document.
	case tag
	
	/// Refers to the terms of service associated with the link's context.
	case termsOfService = "terms-of-service"
	
	/// The Target IRI points to a TimeGate for an Original Resource.
	case timegate
	
	/// The Target IRI points to a TimeMap for an Original Resource.
	case timemap
	
	/// Refers to a resource identifying the abstract semantic type of which the link's context is considered to be an
	/// instance.
	case type
	
	/// Refers to a resource that is within a context that is User Generated Content.
	case ugc
	
	/// Refers to a parent document in a hierarchy of
	///       documents.
	case up
	
	/// Points to a resource containing the version history
	///       for the context.
	case versionHistory = "version-history"
	
	/// Identifies a resource that is the source of the
	///       information in the link's context.
	case via
	
	/// Identifies a target URI that supports the Webmention protocol.
	///     This allows clients that mention a resource in some form of publishing process
	///     to contact that endpoint and inform it that this resource has been mentioned.
	case webmention
	
	/// Points to a working copy for this resource.
	case workingCopy = "working-copy"
	
	/// Points to the versioned resource from which this
	///       working copy was obtained.
	case workingCopyOf = "working-copy-of"
}
