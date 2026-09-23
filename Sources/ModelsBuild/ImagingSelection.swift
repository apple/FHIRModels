//
//  ImagingSelection.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot4 (http://hl7.org/fhir/StructureDefinition/ImagingSelection)
//  Copyright 2026 Apple Inc.
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
 A selection of DICOM SOP instances.
 
 A selection of DICOM SOP instances within a single Study and Series. This might include additional specifics such as a
 set of frames or an image region, allowing linkage to an Observation Resource.
 */
public struct ImagingSelection: DomainResource {
	
	public static let resourceType: ResourceType = .imagingSelection
	
	/// Fulfills plan or order
	public var basedOn: [Reference]?
	
	/// Selected anatomic structure
	public var bodySite: [CodeableReference]?
	
	/// Classifies the imaging selection
	public var category: [CodeableConcept]?
	
	/// Imaging Selection purpose text or code
	public var code: CodeableConcept
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// The imaging study from which the imaging selection is derived
	public var derivedFrom: Reference?
	
	/// The network services providing access for the subset of the study
	public var endpoint: [Reference]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Related resources that are the focus for the imaging selection
	public var focus: [Reference]?
	
	/// The Frame of Reference UID for the selected images
	public var frameOfReferenceUid: FHIRPrimitive<FHIRString>?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Business identifier for imaging selection
	public var identifier: [Identifier]?
	
	/// A 3D region in a DICOM frame of reference
	public var imageRegion3D: [ImagingSelectionImageRegion3D]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// The selected instances
	public var instance: [ImagingSelectionInstance]?
	
	/// When the imaging selection was created
	public var issued: FHIRPrimitive<Instant>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// The distinct modality
	public var modality: CodeableConcept?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Who performed imaging selection and what they did
	public var performer: [ImagingSelectionPerformer]?
	
	/// Numeric identifier of the selected series
	public var seriesNumber: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// DICOM Series Instance UID
	public var seriesUid: FHIRPrimitive<FHIRString>?
	
	/// The current state of the imaging selection. This is distinct from the status of any imaging study, service
	/// request, or task associated with the imaging selection.
	public var status: FHIRPrimitive<ImagingSelectionStatus>
	
	/// DICOM Study Instance UID
	public var studyUid: FHIRPrimitive<FHIRString>?
	
	/// Who or what is the subject of the imaging selection
	public var subject: Reference?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
		basedOn: [Reference]? = nil,
		bodySite: [CodeableReference]? = nil,
		category: [CodeableConcept]? = nil,
		code: CodeableConcept,
		contained: [ResourceProxy]? = nil,
		derivedFrom: Reference? = nil,
		endpoint: [Reference]? = nil,
		`extension`: [Extension]? = nil,
		focus: [Reference]? = nil,
		frameOfReferenceUid: FHIRPrimitive<FHIRString>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		imageRegion3D: [ImagingSelectionImageRegion3D]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		instance: [ImagingSelectionInstance]? = nil,
		issued: FHIRPrimitive<Instant>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modality: CodeableConcept? = nil,
		modifierExtension: [Extension]? = nil,
		performer: [ImagingSelectionPerformer]? = nil,
		seriesNumber: FHIRPrimitive<FHIRUnsignedInteger>? = nil,
		seriesUid: FHIRPrimitive<FHIRString>? = nil,
		status: FHIRPrimitive<ImagingSelectionStatus>,
		studyUid: FHIRPrimitive<FHIRString>? = nil,
		subject: Reference? = nil,
		text: Narrative? = nil
	) {
		self.basedOn = basedOn
		self.bodySite = bodySite
		self.category = category
		self.code = code
		self.contained = contained
		self.derivedFrom = derivedFrom
		self.endpoint = endpoint
		self.`extension` = `extension`
		self.focus = focus
		self.frameOfReferenceUid = frameOfReferenceUid
		self.id = id
		self.identifier = identifier
		self.imageRegion3D = imageRegion3D
		self.implicitRules = implicitRules
		self.instance = instance
		self.issued = issued
		self.language = language
		self.meta = meta
		self.modality = modality
		self.modifierExtension = modifierExtension
		self.performer = performer
		self.seriesNumber = seriesNumber
		self.seriesUid = seriesUid
		self.status = status
		self.studyUid = studyUid
		self.subject = subject
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
		case basedOn
		case bodySite
		case category
		case code
		case contained
		case derivedFrom
		case endpoint
		case `extension` = "extension"
		case focus
		case frameOfReferenceUid; case _frameOfReferenceUid
		case id; case _id
		case identifier
		case imageRegion3D
		case implicitRules; case _implicitRules
		case instance
		case issued; case _issued
		case language; case _language
		case meta
		case modality
		case modifierExtension
		case performer
		case seriesNumber; case _seriesNumber
		case seriesUid; case _seriesUid
		case status; case _status
		case studyUid; case _studyUid
		case subject
		case text
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.bodySite = try [CodeableReference](from: _container, forKeyIfPresent: .bodySite)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.derivedFrom = try Reference(from: _container, forKeyIfPresent: .derivedFrom)
		self.endpoint = try [Reference](from: _container, forKeyIfPresent: .endpoint)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.focus = try [Reference](from: _container, forKeyIfPresent: .focus)
		self.frameOfReferenceUid = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .frameOfReferenceUid, auxiliaryKey: ._frameOfReferenceUid)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.imageRegion3D = try [ImagingSelectionImageRegion3D](from: _container, forKeyIfPresent: .imageRegion3D)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.instance = try [ImagingSelectionInstance](from: _container, forKeyIfPresent: .instance)
		self.issued = try FHIRPrimitive<Instant>(from: _container, forKeyIfPresent: .issued, auxiliaryKey: ._issued)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
		self.modality = try CodeableConcept(from: _container, forKeyIfPresent: .modality)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.performer = try [ImagingSelectionPerformer](from: _container, forKeyIfPresent: .performer)
		self.seriesNumber = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .seriesNumber, auxiliaryKey: ._seriesNumber)
		self.seriesUid = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .seriesUid, auxiliaryKey: ._seriesUid)
		self.status = try FHIRPrimitive<ImagingSelectionStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.studyUid = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .studyUid, auxiliaryKey: ._studyUid)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		self.text = try Narrative(from: _container, forKeyIfPresent: .text)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode resourceType
		try _container.encode(Self.resourceType, forKey: .resourceType)
		
		// Encode all our properties (own and inherited)
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		try bodySite?.encode(on: &_container, forKey: .bodySite)
		try category?.encode(on: &_container, forKey: .category)
		try code.encode(on: &_container, forKey: .code)
		try contained?.encode(on: &_container, forKey: .contained)
		try derivedFrom?.encode(on: &_container, forKey: .derivedFrom)
		try endpoint?.encode(on: &_container, forKey: .endpoint)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try focus?.encode(on: &_container, forKey: .focus)
		try frameOfReferenceUid?.encode(on: &_container, forKey: .frameOfReferenceUid, auxiliaryKey: ._frameOfReferenceUid)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try imageRegion3D?.encode(on: &_container, forKey: .imageRegion3D)
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try instance?.encode(on: &_container, forKey: .instance)
		try issued?.encode(on: &_container, forKey: .issued, auxiliaryKey: ._issued)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
		try modality?.encode(on: &_container, forKey: .modality)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try performer?.encode(on: &_container, forKey: .performer)
		try seriesNumber?.encode(on: &_container, forKey: .seriesNumber, auxiliaryKey: ._seriesNumber)
		try seriesUid?.encode(on: &_container, forKey: .seriesUid, auxiliaryKey: ._seriesUid)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try studyUid?.encode(on: &_container, forKey: .studyUid, auxiliaryKey: ._studyUid)
		try subject?.encode(on: &_container, forKey: .subject)
		try text?.encode(on: &_container, forKey: .text)
	}
}

/**
 A 3D region in a DICOM frame of reference.
 
 Specifies a 3D image region, defined by a region type and a set of 3D coordinates.
 */
public struct ImagingSelectionImageRegion3D: BackboneElement {
	
	/// Specifies the coordinates that define the image region
	public var coordinate: [FHIRPrimitive<FHIRDecimal>]
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Specifies the type of image region.
	public var regionType: FHIRPrimitive<ImagingSelection3DGraphicType>
	
	/// Designated initializer
	public init(
		coordinate: [FHIRPrimitive<FHIRDecimal>],
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		regionType: FHIRPrimitive<ImagingSelection3DGraphicType>
	) {
		self.coordinate = coordinate
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.regionType = regionType
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case coordinate; case _coordinate
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case regionType; case _regionType
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.coordinate = try [FHIRPrimitive<FHIRDecimal>](from: _container, forKey: .coordinate, auxiliaryKey: ._coordinate)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.regionType = try FHIRPrimitive<ImagingSelection3DGraphicType>(from: _container, forKey: .regionType, auxiliaryKey: ._regionType)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try coordinate.encode(on: &_container, forKey: .coordinate, auxiliaryKey: ._coordinate)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try regionType.encode(on: &_container, forKey: .regionType, auxiliaryKey: ._regionType)
	}
}

/**
 The selected instances.
 
 Each imaging selection includes one or more selected DICOM SOP instances.
 */
public struct ImagingSelectionInstance: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Selected frames
	public var frameNumber: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// A 2D region in an image
	public var imageRegion2D: [ImagingSelectionInstanceImageRegion2D]?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The number of this instance in the series
	public var number: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// Selected content items
	public var referencedContentItemIdentifier: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Selected regions of interest
	public var regionOfInterest: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Selected segments
	public var segmentNumber: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// DICOM class type
	public var sopClass: FHIRPrimitive<FHIRURI>?
	
	/// DICOM SOP Instance UID
	public var uid: FHIRPrimitive<FHIRString>
	
	/// Selected waveform channel
	public var waveFormChannel: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		frameNumber: [FHIRPrimitive<FHIRPositiveInteger>]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		imageRegion2D: [ImagingSelectionInstanceImageRegion2D]? = nil,
		modifierExtension: [Extension]? = nil,
		number: FHIRPrimitive<FHIRUnsignedInteger>? = nil,
		referencedContentItemIdentifier: [FHIRPrimitive<FHIRPositiveInteger>]? = nil,
		regionOfInterest: [FHIRPrimitive<FHIRPositiveInteger>]? = nil,
		segmentNumber: [FHIRPrimitive<FHIRPositiveInteger>]? = nil,
		sopClass: FHIRPrimitive<FHIRURI>? = nil,
		uid: FHIRPrimitive<FHIRString>,
		waveFormChannel: [FHIRPrimitive<FHIRPositiveInteger>]? = nil
	) {
		self.`extension` = `extension`
		self.frameNumber = frameNumber
		self.id = id
		self.imageRegion2D = imageRegion2D
		self.modifierExtension = modifierExtension
		self.number = number
		self.referencedContentItemIdentifier = referencedContentItemIdentifier
		self.regionOfInterest = regionOfInterest
		self.segmentNumber = segmentNumber
		self.sopClass = sopClass
		self.uid = uid
		self.waveFormChannel = waveFormChannel
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case frameNumber; case _frameNumber
		case id; case _id
		case imageRegion2D
		case modifierExtension
		case number; case _number
		case referencedContentItemIdentifier; case _referencedContentItemIdentifier
		case regionOfInterest; case _regionOfInterest
		case segmentNumber; case _segmentNumber
		case sopClass; case _sopClass
		case uid; case _uid
		case waveFormChannel; case _waveFormChannel
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.frameNumber = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .frameNumber, auxiliaryKey: ._frameNumber)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.imageRegion2D = try [ImagingSelectionInstanceImageRegion2D](from: _container, forKeyIfPresent: .imageRegion2D)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.number = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .number, auxiliaryKey: ._number)
		self.referencedContentItemIdentifier = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .referencedContentItemIdentifier, auxiliaryKey: ._referencedContentItemIdentifier)
		self.regionOfInterest = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .regionOfInterest, auxiliaryKey: ._regionOfInterest)
		self.segmentNumber = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .segmentNumber, auxiliaryKey: ._segmentNumber)
		self.sopClass = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .sopClass, auxiliaryKey: ._sopClass)
		self.uid = try FHIRPrimitive<FHIRString>(from: _container, forKey: .uid, auxiliaryKey: ._uid)
		self.waveFormChannel = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .waveFormChannel, auxiliaryKey: ._waveFormChannel)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try frameNumber?.encode(on: &_container, forKey: .frameNumber, auxiliaryKey: ._frameNumber)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try imageRegion2D?.encode(on: &_container, forKey: .imageRegion2D)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try number?.encode(on: &_container, forKey: .number, auxiliaryKey: ._number)
		try referencedContentItemIdentifier?.encode(on: &_container, forKey: .referencedContentItemIdentifier, auxiliaryKey: ._referencedContentItemIdentifier)
		try regionOfInterest?.encode(on: &_container, forKey: .regionOfInterest, auxiliaryKey: ._regionOfInterest)
		try segmentNumber?.encode(on: &_container, forKey: .segmentNumber, auxiliaryKey: ._segmentNumber)
		try sopClass?.encode(on: &_container, forKey: .sopClass, auxiliaryKey: ._sopClass)
		try uid.encode(on: &_container, forKey: .uid, auxiliaryKey: ._uid)
		try waveFormChannel?.encode(on: &_container, forKey: .waveFormChannel, auxiliaryKey: ._waveFormChannel)
	}
}

/**
 A 2D region in an image.
 
 Specifies an image region, defined by a region type and a set of 2D coordinates in pixel space.
 */
public struct ImagingSelectionInstanceImageRegion2D: BackboneElement {
	
	/// The coordinates that define the image region
	public var coordinate: [FHIRPrimitive<FHIRDecimal>]
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// The type of image region.
	public var regionType: FHIRPrimitive<ImagingSelection2DGraphicType>
	
	/// Designated initializer
	public init(
		coordinate: [FHIRPrimitive<FHIRDecimal>],
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		regionType: FHIRPrimitive<ImagingSelection2DGraphicType>
	) {
		self.coordinate = coordinate
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.regionType = regionType
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case coordinate; case _coordinate
		case `extension` = "extension"
		case id; case _id
		case modifierExtension
		case regionType; case _regionType
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.coordinate = try [FHIRPrimitive<FHIRDecimal>](from: _container, forKey: .coordinate, auxiliaryKey: ._coordinate)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.regionType = try FHIRPrimitive<ImagingSelection2DGraphicType>(from: _container, forKey: .regionType, auxiliaryKey: ._regionType)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try coordinate.encode(on: &_container, forKey: .coordinate, auxiliaryKey: ._coordinate)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try regionType.encode(on: &_container, forKey: .regionType, auxiliaryKey: ._regionType)
	}
}

/**
 Who performed imaging selection and what they did.
 
 Indicates who or what performed the imaging selection and how they were involved.
 */
public struct ImagingSelectionPerformer: BackboneElement {
	
	/// Who performed the imaging selection
	public var actor: Reference
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Type of performance
	public var function: CodeableConcept?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		actor: Reference,
		`extension`: [Extension]? = nil,
		function: CodeableConcept? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.actor = actor
		self.`extension` = `extension`
		self.function = function
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case actor
		case `extension` = "extension"
		case function
		case id; case _id
		case modifierExtension
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.actor = try Reference(from: _container, forKey: .actor)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.function = try CodeableConcept(from: _container, forKeyIfPresent: .function)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try actor.encode(on: &_container, forKey: .actor)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try function?.encode(on: &_container, forKey: .function)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}
