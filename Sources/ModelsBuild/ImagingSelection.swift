//
//  ImagingSelection.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot3 (http://hl7.org/fhir/StructureDefinition/ImagingSelection)
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
 A selection of DICOM SOP instances.
 
 A selection of DICOM SOP instances within a single Study and Series. This might include additional specifics such as a
 set of frames or an image region, allowing linkage to an Observation Resource.
 */
open class ImagingSelection: DomainResource {
	
	override open class var resourceType: ResourceType { return .imagingSelection }
	
	/// Business identifier for imaging selection
	public var identifier: [Identifier]?
	
	/// The current state of the imaging selection. This is distinct from the status of any imaging study, service
	/// request, or task associated with the imaging selection.
	public var status: FHIRPrimitive<ImagingSelectionStatus>
	
	/// Classifies the imaging selection
	public var category: [CodeableConcept]?
	
	/// The distinct modality
	public var modality: CodeableConcept?
	
	/// Imaging Selection purpose text or code
	public var code: CodeableConcept
	
	/// Who or what is the subject of the imaging selection
	public var subject: Reference?
	
	/// When the imaging selection was created
	public var issued: FHIRPrimitive<Instant>?
	
	/// Who performed imaging selection and what they did
	public var performer: [ImagingSelectionPerformer]?
	
	/// Fulfills plan or order
	public var basedOn: [Reference]?
	
	/// The imaging study from which the imaging selection is derived
	public var derivedFrom: Reference?
	
	/// DICOM Study Instance UID
	public var studyUid: FHIRPrimitive<FHIRString>?
	
	/// DICOM Series Instance UID
	public var seriesUid: FHIRPrimitive<FHIRString>?
	
	/// Numeric identifier of the selected series
	public var seriesNumber: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// The Frame of Reference UID for the selected images
	public var frameOfReferenceUid: FHIRPrimitive<FHIRString>?
	
	/// Selected anatomic structure
	public var bodySite: [CodeableReference]?
	
	/// Related resources that are the focus for the imaging selection
	public var focus: [Reference]?
	
	/// The network services providing access for the subset of the study
	public var endpoint: [Reference]?
	
	/// The selected instances
	public var instance: [ImagingSelectionInstance]?
	
	/// A 3D region in a DICOM frame of reference
	public var imageRegion3D: [ImagingSelectionImageRegion3D]?
	
	/// Designated initializer taking all required properties
	public init(code: CodeableConcept, status: FHIRPrimitive<ImagingSelectionStatus>) {
		self.code = code
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
		self.init(code: code, status: status)
		self.basedOn = basedOn
		self.bodySite = bodySite
		self.category = category
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
		self.studyUid = studyUid
		self.subject = subject
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case basedOn
		case bodySite
		case category
		case code
		case derivedFrom
		case endpoint
		case focus
		case frameOfReferenceUid; case _frameOfReferenceUid
		case identifier
		case imageRegion3D
		case instance
		case issued; case _issued
		case modality
		case performer
		case seriesNumber; case _seriesNumber
		case seriesUid; case _seriesUid
		case status; case _status
		case studyUid; case _studyUid
		case subject
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.basedOn = try [Reference](from: _container, forKeyIfPresent: .basedOn)
		self.bodySite = try [CodeableReference](from: _container, forKeyIfPresent: .bodySite)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.derivedFrom = try Reference(from: _container, forKeyIfPresent: .derivedFrom)
		self.endpoint = try [Reference](from: _container, forKeyIfPresent: .endpoint)
		self.focus = try [Reference](from: _container, forKeyIfPresent: .focus)
		self.frameOfReferenceUid = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .frameOfReferenceUid, auxiliaryKey: ._frameOfReferenceUid)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.imageRegion3D = try [ImagingSelectionImageRegion3D](from: _container, forKeyIfPresent: .imageRegion3D)
		self.instance = try [ImagingSelectionInstance](from: _container, forKeyIfPresent: .instance)
		self.issued = try FHIRPrimitive<Instant>(from: _container, forKeyIfPresent: .issued, auxiliaryKey: ._issued)
		self.modality = try CodeableConcept(from: _container, forKeyIfPresent: .modality)
		self.performer = try [ImagingSelectionPerformer](from: _container, forKeyIfPresent: .performer)
		self.seriesNumber = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .seriesNumber, auxiliaryKey: ._seriesNumber)
		self.seriesUid = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .seriesUid, auxiliaryKey: ._seriesUid)
		self.status = try FHIRPrimitive<ImagingSelectionStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.studyUid = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .studyUid, auxiliaryKey: ._studyUid)
		self.subject = try Reference(from: _container, forKeyIfPresent: .subject)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try basedOn?.encode(on: &_container, forKey: .basedOn)
		try bodySite?.encode(on: &_container, forKey: .bodySite)
		try category?.encode(on: &_container, forKey: .category)
		try code.encode(on: &_container, forKey: .code)
		try derivedFrom?.encode(on: &_container, forKey: .derivedFrom)
		try endpoint?.encode(on: &_container, forKey: .endpoint)
		try focus?.encode(on: &_container, forKey: .focus)
		try frameOfReferenceUid?.encode(on: &_container, forKey: .frameOfReferenceUid, auxiliaryKey: ._frameOfReferenceUid)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try imageRegion3D?.encode(on: &_container, forKey: .imageRegion3D)
		try instance?.encode(on: &_container, forKey: .instance)
		try issued?.encode(on: &_container, forKey: .issued, auxiliaryKey: ._issued)
		try modality?.encode(on: &_container, forKey: .modality)
		try performer?.encode(on: &_container, forKey: .performer)
		try seriesNumber?.encode(on: &_container, forKey: .seriesNumber, auxiliaryKey: ._seriesNumber)
		try seriesUid?.encode(on: &_container, forKey: .seriesUid, auxiliaryKey: ._seriesUid)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try studyUid?.encode(on: &_container, forKey: .studyUid, auxiliaryKey: ._studyUid)
		try subject?.encode(on: &_container, forKey: .subject)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ImagingSelection else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return basedOn == _other.basedOn
		    && bodySite == _other.bodySite
		    && category == _other.category
		    && code == _other.code
		    && derivedFrom == _other.derivedFrom
		    && endpoint == _other.endpoint
		    && focus == _other.focus
		    && frameOfReferenceUid == _other.frameOfReferenceUid
		    && identifier == _other.identifier
		    && imageRegion3D == _other.imageRegion3D
		    && instance == _other.instance
		    && issued == _other.issued
		    && modality == _other.modality
		    && performer == _other.performer
		    && seriesNumber == _other.seriesNumber
		    && seriesUid == _other.seriesUid
		    && status == _other.status
		    && studyUid == _other.studyUid
		    && subject == _other.subject
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(basedOn)
		hasher.combine(bodySite)
		hasher.combine(category)
		hasher.combine(code)
		hasher.combine(derivedFrom)
		hasher.combine(endpoint)
		hasher.combine(focus)
		hasher.combine(frameOfReferenceUid)
		hasher.combine(identifier)
		hasher.combine(imageRegion3D)
		hasher.combine(instance)
		hasher.combine(issued)
		hasher.combine(modality)
		hasher.combine(performer)
		hasher.combine(seriesNumber)
		hasher.combine(seriesUid)
		hasher.combine(status)
		hasher.combine(studyUid)
		hasher.combine(subject)
	}
}

/**
 A 3D region in a DICOM frame of reference.
 
 Specifies a 3D image region, defined by a region type and a set of 3D coordinates.
 */
open class ImagingSelectionImageRegion3D: BackboneElement {
	
	/// Specifies the type of image region.
	public var regionType: FHIRPrimitive<ImagingSelection3DGraphicType>
	
	/// Specifies the coordinates that define the image region
	public var coordinate: [FHIRPrimitive<FHIRDecimal>]
	
	/// Designated initializer taking all required properties
	public init(coordinate: [FHIRPrimitive<FHIRDecimal>], regionType: FHIRPrimitive<ImagingSelection3DGraphicType>) {
		self.coordinate = coordinate
		self.regionType = regionType
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		coordinate: [FHIRPrimitive<FHIRDecimal>],
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		regionType: FHIRPrimitive<ImagingSelection3DGraphicType>
	) {
		self.init(coordinate: coordinate, regionType: regionType)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case coordinate; case _coordinate
		case regionType; case _regionType
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.coordinate = try [FHIRPrimitive<FHIRDecimal>](from: _container, forKey: .coordinate, auxiliaryKey: ._coordinate)
		self.regionType = try FHIRPrimitive<ImagingSelection3DGraphicType>(from: _container, forKey: .regionType, auxiliaryKey: ._regionType)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try coordinate.encode(on: &_container, forKey: .coordinate, auxiliaryKey: ._coordinate)
		try regionType.encode(on: &_container, forKey: .regionType, auxiliaryKey: ._regionType)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ImagingSelectionImageRegion3D else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return coordinate == _other.coordinate
		    && regionType == _other.regionType
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(coordinate)
		hasher.combine(regionType)
	}
}

/**
 The selected instances.
 
 Each imaging selection includes one or more selected DICOM SOP instances.
 */
open class ImagingSelectionInstance: BackboneElement {
	
	/// DICOM SOP Instance UID
	public var uid: FHIRPrimitive<FHIRString>
	
	/// The number of this instance in the series
	public var number: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// DICOM class type
	public var sopClass: FHIRPrimitive<FHIRURI>?
	
	/// Selected frames
	public var frameNumber: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Selected content items
	public var referencedContentItemIdentifier: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Selected segments
	public var segmentNumber: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Selected regions of interest
	public var regionOfInterest: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// Selected waveform channel
	public var waveFormChannel: [FHIRPrimitive<FHIRPositiveInteger>]?
	
	/// A 2D region in an image
	public var imageRegion2D: [ImagingSelectionInstanceImageRegion2D]?
	
	/// Designated initializer taking all required properties
	public init(uid: FHIRPrimitive<FHIRString>) {
		self.uid = uid
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
		self.init(uid: uid)
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
		self.waveFormChannel = waveFormChannel
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case frameNumber; case _frameNumber
		case imageRegion2D
		case number; case _number
		case referencedContentItemIdentifier; case _referencedContentItemIdentifier
		case regionOfInterest; case _regionOfInterest
		case segmentNumber; case _segmentNumber
		case sopClass; case _sopClass
		case uid; case _uid
		case waveFormChannel; case _waveFormChannel
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.frameNumber = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .frameNumber, auxiliaryKey: ._frameNumber)
		self.imageRegion2D = try [ImagingSelectionInstanceImageRegion2D](from: _container, forKeyIfPresent: .imageRegion2D)
		self.number = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .number, auxiliaryKey: ._number)
		self.referencedContentItemIdentifier = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .referencedContentItemIdentifier, auxiliaryKey: ._referencedContentItemIdentifier)
		self.regionOfInterest = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .regionOfInterest, auxiliaryKey: ._regionOfInterest)
		self.segmentNumber = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .segmentNumber, auxiliaryKey: ._segmentNumber)
		self.sopClass = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .sopClass, auxiliaryKey: ._sopClass)
		self.uid = try FHIRPrimitive<FHIRString>(from: _container, forKey: .uid, auxiliaryKey: ._uid)
		self.waveFormChannel = try [FHIRPrimitive<FHIRPositiveInteger>](from: _container, forKeyIfPresent: .waveFormChannel, auxiliaryKey: ._waveFormChannel)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try frameNumber?.encode(on: &_container, forKey: .frameNumber, auxiliaryKey: ._frameNumber)
		try imageRegion2D?.encode(on: &_container, forKey: .imageRegion2D)
		try number?.encode(on: &_container, forKey: .number, auxiliaryKey: ._number)
		try referencedContentItemIdentifier?.encode(on: &_container, forKey: .referencedContentItemIdentifier, auxiliaryKey: ._referencedContentItemIdentifier)
		try regionOfInterest?.encode(on: &_container, forKey: .regionOfInterest, auxiliaryKey: ._regionOfInterest)
		try segmentNumber?.encode(on: &_container, forKey: .segmentNumber, auxiliaryKey: ._segmentNumber)
		try sopClass?.encode(on: &_container, forKey: .sopClass, auxiliaryKey: ._sopClass)
		try uid.encode(on: &_container, forKey: .uid, auxiliaryKey: ._uid)
		try waveFormChannel?.encode(on: &_container, forKey: .waveFormChannel, auxiliaryKey: ._waveFormChannel)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ImagingSelectionInstance else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return frameNumber == _other.frameNumber
		    && imageRegion2D == _other.imageRegion2D
		    && number == _other.number
		    && referencedContentItemIdentifier == _other.referencedContentItemIdentifier
		    && regionOfInterest == _other.regionOfInterest
		    && segmentNumber == _other.segmentNumber
		    && sopClass == _other.sopClass
		    && uid == _other.uid
		    && waveFormChannel == _other.waveFormChannel
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(frameNumber)
		hasher.combine(imageRegion2D)
		hasher.combine(number)
		hasher.combine(referencedContentItemIdentifier)
		hasher.combine(regionOfInterest)
		hasher.combine(segmentNumber)
		hasher.combine(sopClass)
		hasher.combine(uid)
		hasher.combine(waveFormChannel)
	}
}

/**
 A 2D region in an image.
 
 Specifies an image region, defined by a region type and a set of 2D coordinates in pixel space.
 */
open class ImagingSelectionInstanceImageRegion2D: BackboneElement {
	
	/// The type of image region.
	public var regionType: FHIRPrimitive<ImagingSelection2DGraphicType>
	
	/// The coordinates that define the image region
	public var coordinate: [FHIRPrimitive<FHIRDecimal>]
	
	/// Designated initializer taking all required properties
	public init(coordinate: [FHIRPrimitive<FHIRDecimal>], regionType: FHIRPrimitive<ImagingSelection2DGraphicType>) {
		self.coordinate = coordinate
		self.regionType = regionType
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		coordinate: [FHIRPrimitive<FHIRDecimal>],
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		regionType: FHIRPrimitive<ImagingSelection2DGraphicType>
	) {
		self.init(coordinate: coordinate, regionType: regionType)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case coordinate; case _coordinate
		case regionType; case _regionType
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.coordinate = try [FHIRPrimitive<FHIRDecimal>](from: _container, forKey: .coordinate, auxiliaryKey: ._coordinate)
		self.regionType = try FHIRPrimitive<ImagingSelection2DGraphicType>(from: _container, forKey: .regionType, auxiliaryKey: ._regionType)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try coordinate.encode(on: &_container, forKey: .coordinate, auxiliaryKey: ._coordinate)
		try regionType.encode(on: &_container, forKey: .regionType, auxiliaryKey: ._regionType)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ImagingSelectionInstanceImageRegion2D else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return coordinate == _other.coordinate
		    && regionType == _other.regionType
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(coordinate)
		hasher.combine(regionType)
	}
}

/**
 Who performed imaging selection and what they did.
 
 Indicates who or what performed the imaging selection and how they were involved.
 */
open class ImagingSelectionPerformer: BackboneElement {
	
	/// Type of performance
	public var function: CodeableConcept?
	
	/// Who performed the imaging selection
	public var actor: Reference
	
	/// Designated initializer taking all required properties
	public init(actor: Reference) {
		self.actor = actor
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		actor: Reference,
		`extension`: [Extension]? = nil,
		function: CodeableConcept? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.init(actor: actor)
		self.`extension` = `extension`
		self.function = function
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case actor
		case function
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.actor = try Reference(from: _container, forKey: .actor)
		self.function = try CodeableConcept(from: _container, forKeyIfPresent: .function)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try actor.encode(on: &_container, forKey: .actor)
		try function?.encode(on: &_container, forKey: .function)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ImagingSelectionPerformer else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return actor == _other.actor
		    && function == _other.function
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(actor)
		hasher.combine(function)
	}
}
