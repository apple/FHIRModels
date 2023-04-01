//
//  ImagingSelection.swift
//  HealthSoftware
//
//  Generated from FHIR 5.0.0 (http://hl7.org/fhir/StructureDefinition/ImagingSelection)
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
 A selection of DICOM SOP instances and/or frames.
 
 A selection of DICOM SOP instances and/or frames within a single Study and Series. This might include additional
 specifics such as an image region, an Observation UID or a Segmentation Number, allowing linkage to an Observation
 Resource or transferring this information along with the ImagingStudy Resource.
 */
open class ImagingSelection: DomainResource {
	
	override open class var resourceType: ResourceType { return .imagingSelection }
	
	/// Business Identifier for Imaging Selection
	public var identifier: [Identifier]?
	
	/// The current state of the ImagingSelection resource. This is not the status of any ImagingStudy, ServiceRequest,
	/// or Task resources associated with the ImagingSelection.
	public var status: FHIRPrimitive<ImagingSelectionStatus>
	
	/// Subject of the selected instances
	public var subject: Reference?
	
	/// Date / Time when this imaging selection was created
	public var issued: FHIRPrimitive<Instant>?
	
	/// Selector of the instances (human or machine)
	public var performer: [ImagingSelectionPerformer]?
	
	/// Associated request
	public var basedOn: [Reference]?
	
	/// Classifies the imaging selection
	public var category: [CodeableConcept]?
	
	/// Imaging Selection purpose text or code
	public var code: CodeableConcept
	
	/// DICOM Study Instance UID
	public var studyUid: FHIRPrimitive<FHIRString>?
	
	/// The imaging study from which the imaging selection is derived
	public var derivedFrom: [Reference]?
	
	/// The network service providing retrieval for the images referenced in the imaging selection
	public var endpoint: [Reference]?
	
	/// DICOM Series Instance UID
	public var seriesUid: FHIRPrimitive<FHIRString>?
	
	/// DICOM Series Number
	public var seriesNumber: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// The Frame of Reference UID for the selected images
	public var frameOfReferenceUid: FHIRPrimitive<FHIRString>?
	
	/// Body part examined
	public var bodySite: CodeableReference?
	
	/// Related resource that is the focus for the imaging selection
	public var focus: [Reference]?
	
	/// The selected instances
	public var instance: [ImagingSelectionInstance]?
	
	/// Designated initializer taking all required properties
	public init(code: CodeableConcept, status: FHIRPrimitive<ImagingSelectionStatus>) {
		self.code = code
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
		self.implicitRules = implicitRules
		self.instance = instance
		self.issued = issued
		self.language = language
		self.meta = meta
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
		case instance
		case issued; case _issued
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
		self.bodySite = try CodeableReference(from: _container, forKeyIfPresent: .bodySite)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		self.code = try CodeableConcept(from: _container, forKey: .code)
		self.derivedFrom = try [Reference](from: _container, forKeyIfPresent: .derivedFrom)
		self.endpoint = try [Reference](from: _container, forKeyIfPresent: .endpoint)
		self.focus = try [Reference](from: _container, forKeyIfPresent: .focus)
		self.frameOfReferenceUid = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .frameOfReferenceUid, auxiliaryKey: ._frameOfReferenceUid)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.instance = try [ImagingSelectionInstance](from: _container, forKeyIfPresent: .instance)
		self.issued = try FHIRPrimitive<Instant>(from: _container, forKeyIfPresent: .issued, auxiliaryKey: ._issued)
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
		try instance?.encode(on: &_container, forKey: .instance)
		try issued?.encode(on: &_container, forKey: .issued, auxiliaryKey: ._issued)
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
		    && instance == _other.instance
		    && issued == _other.issued
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
		hasher.combine(instance)
		hasher.combine(issued)
		hasher.combine(performer)
		hasher.combine(seriesNumber)
		hasher.combine(seriesUid)
		hasher.combine(status)
		hasher.combine(studyUid)
		hasher.combine(subject)
	}
}

/**
 The selected instances.
 
 Each imaging selection includes one or more selected DICOM SOP instances.
 */
open class ImagingSelectionInstance: BackboneElement {
	
	/// DICOM SOP Instance UID
	public var uid: FHIRPrimitive<FHIRString>
	
	/// DICOM Instance Number
	public var number: FHIRPrimitive<FHIRUnsignedInteger>?
	
	/// DICOM SOP Class UID
	public var sopClass: Coding?
	
	/// The selected subset of the SOP Instance
	public var subset: [FHIRPrimitive<FHIRString>]?
	
	/// A specific 2D region in a DICOM image / frame
	public var imageRegion2D: [ImagingSelectionInstanceImageRegion2D]?
	
	/// A specific 3D region in a DICOM frame of reference
	public var imageRegion3D: [ImagingSelectionInstanceImageRegion3D]?
	
	/// Designated initializer taking all required properties
	public init(uid: FHIRPrimitive<FHIRString>) {
		self.uid = uid
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
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
		self.init(uid: uid)
		self.`extension` = `extension`
		self.id = id
		self.imageRegion2D = imageRegion2D
		self.imageRegion3D = imageRegion3D
		self.modifierExtension = modifierExtension
		self.number = number
		self.sopClass = sopClass
		self.subset = subset
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case imageRegion2D
		case imageRegion3D
		case number; case _number
		case sopClass
		case subset; case _subset
		case uid; case _uid
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.imageRegion2D = try [ImagingSelectionInstanceImageRegion2D](from: _container, forKeyIfPresent: .imageRegion2D)
		self.imageRegion3D = try [ImagingSelectionInstanceImageRegion3D](from: _container, forKeyIfPresent: .imageRegion3D)
		self.number = try FHIRPrimitive<FHIRUnsignedInteger>(from: _container, forKeyIfPresent: .number, auxiliaryKey: ._number)
		self.sopClass = try Coding(from: _container, forKeyIfPresent: .sopClass)
		self.subset = try [FHIRPrimitive<FHIRString>](from: _container, forKeyIfPresent: .subset, auxiliaryKey: ._subset)
		self.uid = try FHIRPrimitive<FHIRString>(from: _container, forKey: .uid, auxiliaryKey: ._uid)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try imageRegion2D?.encode(on: &_container, forKey: .imageRegion2D)
		try imageRegion3D?.encode(on: &_container, forKey: .imageRegion3D)
		try number?.encode(on: &_container, forKey: .number, auxiliaryKey: ._number)
		try sopClass?.encode(on: &_container, forKey: .sopClass)
		try subset?.encode(on: &_container, forKey: .subset, auxiliaryKey: ._subset)
		try uid.encode(on: &_container, forKey: .uid, auxiliaryKey: ._uid)
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
		return imageRegion2D == _other.imageRegion2D
		    && imageRegion3D == _other.imageRegion3D
		    && number == _other.number
		    && sopClass == _other.sopClass
		    && subset == _other.subset
		    && uid == _other.uid
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(imageRegion2D)
		hasher.combine(imageRegion3D)
		hasher.combine(number)
		hasher.combine(sopClass)
		hasher.combine(subset)
		hasher.combine(uid)
	}
}

/**
 A specific 2D region in a DICOM image / frame.
 
 Each imaging selection instance or frame list might includes an image region, specified by a region type and a set of
 2D coordinates.
        If the parent imagingSelection.instance contains a subset element of type frame, the image region applies to all
 frames in the subset list.
 */
open class ImagingSelectionInstanceImageRegion2D: BackboneElement {
	
	/// Specifies the type of image region.
	public var regionType: FHIRPrimitive<ImagingSelection2DGraphicType>
	
	/// Specifies the coordinates that define the image region
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
 A specific 3D region in a DICOM frame of reference.
 
 Each imaging selection might includes a 3D image region, specified by a region type and a set of 3D coordinates.
 */
open class ImagingSelectionInstanceImageRegion3D: BackboneElement {
	
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
		guard let _other = _other as? ImagingSelectionInstanceImageRegion3D else {
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
 Selector of the instances (human or machine).
 
 Selector of the instances – human or machine.
 */
open class ImagingSelectionPerformer: BackboneElement {
	
	/// Type of performer
	public var function: CodeableConcept?
	
	/// Author (human or machine)
	public var actor: Reference?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		actor: Reference? = nil,
		`extension`: [Extension]? = nil,
		function: CodeableConcept? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.init()
		self.actor = actor
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
		self.actor = try Reference(from: _container, forKeyIfPresent: .actor)
		self.function = try CodeableConcept(from: _container, forKeyIfPresent: .function)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try actor?.encode(on: &_container, forKey: .actor)
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
