//
//  ImagingSelection.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/ImagingSelection)
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
 A selection of DICOM SOP instances and/or frames.
 
 A selection of DICOM SOP instances and/or frames within a single Study and Series. This might include additional
 specifics such as an image region, an Observation UID or a Segmentation Number, allowing linkage to an Observation
 Resource or transferring this information along with the ImagingStudy Resource.
 */
public struct ImagingSelection: DomainResource {
	
	public static let resourceType: ResourceType = .imagingSelection
	
	/// Associated request
	public var basedOn: [Reference]?
	
	/// Body part examined
	public var bodySite: CodeableReference?
	
	/// Classifies the imaging selection
	public var category: [CodeableConcept]?
	
	/// Imaging Selection purpose text or code
	public var code: CodeableConcept
	
	/// Contained, inline Resources
	public var contained: [ResourceProxy]?
	
	/// The imaging study from which the imaging selection is derived
	public var derivedFrom: [Reference]?
	
	/// The network service providing retrieval for the images referenced in the imaging selection
	public var endpoint: [Reference]?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Related resource that is the focus for the imaging selection
	public var focus: [Reference]?
	
	/// The Frame of Reference UID for the selected images
	public var frameOfReferenceUid: FHIRPrimitive<FHIRString>?
	
	/// Logical id of this artifact
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Business Identifier for Imaging Selection
	public var identifier: [Identifier]?
	
	/// A set of rules under which this content was created
	public var implicitRules: FHIRPrimitive<FHIRURI>?
	
	/// The selected instances
	public var instance: [ImagingSelectionInstance]?
	
	/// Date / Time when this imaging selection was created
	public var issued: FHIRPrimitive<Instant>?
	
	/// Language of the resource content
	public var language: FHIRPrimitive<FHIRString>?
	
	/// Metadata about the resource
	public var meta: Meta?
	
	/// Extensions that cannot be ignored
	public var modifierExtension: [Extension]?
	
	/// Selector of the instances (human or machine)
	public var performer: [ImagingSelectionPerformer]?
	
	/// DICOM Series Number
	public var seriesNumber: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// DICOM Series Instance UID
	public var seriesUid: FHIRPrimitive<FHIRString>?
	
	/// The current state of the ImagingSelection resource. This is not the status of any ImagingStudy, ServiceRequest,
	/// or Task resources associated with the ImagingSelection.
	public var status: FHIRPrimitive<ImagingSelectionStatus>
	
	/// DICOM Study Instance UID
	public var studyUid: FHIRPrimitive<FHIRString>?
	
	/// Subject of the selected instances
	public var subject: Reference?
	
	/// Text summary of the resource, for human interpretation
	public var text: Narrative?
	
	/// Designated initializer
	public init(
		basedOn: [Reference]? = nil,
		bodySite: CodeableReference? = nil,
		category: [CodeableConcept]? = nil,
		code: CodeableConcept,
		contained: [ResourceProxy]? = nil,
		derivedFrom: [Reference]? = nil,
		endpoint: [Reference]? = nil,
		`extension`: [Extension]? = nil,
		focus: [Reference]? = nil,
		frameOfReferenceUid: FHIRPrimitive<FHIRString>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		instance: [ImagingSelectionInstance]? = nil,
		issued: FHIRPrimitive<Instant>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
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
		self.implicitRules = implicitRules
		self.instance = instance
		self.issued = issued
		self.language = language
		self.meta = meta
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
		case implicitRules; case _implicitRules
		case instance
		case issued; case _issued
		case language; case _language
		case meta
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
		self.bodySite = try CodeableReference(from: _container, forKeyIfPresent: .bodySite)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.contained = try [ResourceProxy](from: _container, forKeyIfPresent: .contained)
		self.derivedFrom = try [Reference](from: _container, forKeyIfPresent: .derivedFrom)
		self.endpoint = try [Reference](from: _container, forKeyIfPresent: .endpoint)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.focus = try [Reference](from: _container, forKeyIfPresent: .focus)
		self.frameOfReferenceUid = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .frameOfReferenceUid, auxiliaryKey: ._frameOfReferenceUid)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.implicitRules = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .implicitRules, auxiliaryKey: ._implicitRules)
		self.instance = try [ImagingSelectionInstance](from: _container, forKeyIfPresent: .instance)
		self.issued = try FHIRPrimitive<Instant>(from: _container, forKeyIfPresent: .issued, auxiliaryKey: ._issued)
		self.language = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .language, auxiliaryKey: ._language)
		self.meta = try Meta(from: _container, forKeyIfPresent: .meta)
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
		try implicitRules?.encode(on: &_container, forKey: .implicitRules, auxiliaryKey: ._implicitRules)
		try instance?.encode(on: &_container, forKey: .instance)
		try issued?.encode(on: &_container, forKey: .issued, auxiliaryKey: ._issued)
		try language?.encode(on: &_container, forKey: .language, auxiliaryKey: ._language)
		try meta?.encode(on: &_container, forKey: .meta)
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
 The selected instances.
 
 Each imaging selection includes one or more selected DICOM SOP instances.
 */
public struct ImagingSelectionInstance: BackboneElement {
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// A specific 2D region in a DICOM image / frame
	public var imageRegion2D: [ImagingSelectionInstanceImageRegion2D]?
	
	/// A specific 3D region in a DICOM frame of reference
	public var imageRegion3D: [ImagingSelectionInstanceImageRegion3D]?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// DICOM Instance Number
	public var number: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// DICOM SOP Class UID
	public var sopClass: Coding?
	
	/// The selected subset of the SOP Instance
	public var subset: [FHIRPrimitive<FHIRString>]?
	
	/// DICOM SOP Instance UID
	public var uid: FHIRPrimitive<FHIRString>
	
	/// Designated initializer
	public init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		imageRegion2D: [ImagingSelectionInstanceImageRegion2D]? = nil,
		imageRegion3D: [ImagingSelectionInstanceImageRegion3D]? = nil,
		modifierExtension: [Extension]? = nil,
		number: FHIRPrimitive<FHIRUnsignedInteger>? = nil,
		sopClass: Coding? = nil,
		subset: [FHIRPrimitive<FHIRString>]? = nil,
		uid: FHIRPrimitive<FHIRString>
	) {
		self.`extension` = `extension`
		self.id = id
		self.imageRegion2D = imageRegion2D
		self.imageRegion3D = imageRegion3D
		self.modifierExtension = modifierExtension
		self.number = number
		self.sopClass = sopClass
		self.subset = subset
		self.uid = uid
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case `extension` = "extension"
		case id; case _id
		case imageRegion2D
		case imageRegion3D
		case modifierExtension
		case number; case _number
		case sopClass
		case subset; case _subset
		case uid; case _uid
	}

	/// Initializer for Decodable
	public init(from decoder: Decoder) throws {
		try decoder.enforceFHIRModelsDepthLimit()
		
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties (own and inherited)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.imageRegion2D = try [ImagingSelectionInstanceImageRegion2D](from: _container, forKeyIfPresent: .imageRegion2D)
		self.imageRegion3D = try [ImagingSelectionInstanceImageRegion3D](from: _container, forKeyIfPresent: .imageRegion3D)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
		self.number = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .number, auxiliaryKey: ._number)
		self.sopClass = try Coding(from: _container, forKeyIfPresent: .sopClass)
		self.subset = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .subset, auxiliaryKey: ._subset)
		self.uid = try FHIRPrimitive<FHIRString>(from: _container, forKey: .uid, auxiliaryKey: ._uid)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try imageRegion2D?.encode(on: &_container, forKey: .imageRegion2D)
		try imageRegion3D?.encode(on: &_container, forKey: .imageRegion3D)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
		try number?.encode(on: &_container, forKey: .number, auxiliaryKey: ._number)
		try sopClass?.encode(on: &_container, forKey: .sopClass)
		try subset?.encode(on: &_container, forKey: .subset, auxiliaryKey: ._subset)
		try uid.encode(on: &_container, forKey: .uid, auxiliaryKey: ._uid)
	}
}

/**
 A specific 2D region in a DICOM image / frame.
 
 Each imaging selection instance or frame list might includes an image region, specified by a region type and a set of
 2D coordinates.
        If the parent imagingSelection.instance contains a subset element of type frame, the image region applies to all
 frames in the subset list.
 */
public struct ImagingSelectionInstanceImageRegion2D: BackboneElement {
	
	/// Specifies the coordinates that define the image region
	public var coordinate: [FHIRPrimitive<FHIRDecimal>]
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Specifies the type of image region.
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
 A specific 3D region in a DICOM frame of reference.
 
 Each imaging selection might includes a 3D image region, specified by a region type and a set of 3D coordinates.
 */
public struct ImagingSelectionInstanceImageRegion3D: BackboneElement {
	
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
 Selector of the instances (human or machine).
 
 Selector of the instances – human or machine.
 */
public struct ImagingSelectionPerformer: BackboneElement {
	
	/// Author (human or machine)
	public var actor: Reference?
	
	/// Additional content defined by implementations
	public var `extension`: [Extension]?
	
	/// Type of performer
	public var function: CodeableConcept?
	
	/// Unique id for inter-element referencing
	public var id: FHIRPrimitive<FHIRString>?
	
	/// Extensions that cannot be ignored even if unrecognized
	public var modifierExtension: [Extension]?
	
	/// Designated initializer
	public init(
		actor: Reference? = nil,
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
		self.actor = try Reference(from: _container, forKeyIfPresent: .actor)
		self.`extension` = try [Extension](from: _container, forKeyIfPresent: .`extension`)
		self.function = try CodeableConcept(from: _container, forKeyIfPresent: .function)
		self.id = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .id, auxiliaryKey: ._id)
		self.modifierExtension = try [Extension](from: _container, forKeyIfPresent: .modifierExtension)
	}
	
	/// Encodable
	public func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties (own and inherited)
		try actor?.encode(on: &_container, forKey: .actor)
		try `extension`?.encode(on: &_container, forKey: .`extension`)
		try function?.encode(on: &_container, forKey: .function)
		try id?.encode(on: &_container, forKey: .id, auxiliaryKey: ._id)
		try modifierExtension?.encode(on: &_container, forKey: .modifierExtension)
	}
}
