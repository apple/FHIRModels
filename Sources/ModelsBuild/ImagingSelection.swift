//
//  ImagingSelection.swift
//  HealthSoftware
//
//  Generated from FHIR 4.6.0-048af26 (http://hl7.org/fhir/StructureDefinition/ImagingSelection)
//  Copyright 2022 Apple Inc.
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
	
	/// Subject of the selected instances and / or frames
	public var subject: Reference?
	
	/// Date / Time when the selection of instances was made
	public var issued: FHIRPrimitive<Instant>?
	
	/// Author (human or machine)
	public var performer: [ImagingSelectionPerformer]?
	
	/// Associated request
	public var basedOn: [Reference]?
	
	/// Classifies the imaging selection
	public var category: [CodeableConcept]?
	
	/// Imaging Selection description text or code
	public var code: CodeableConcept
	
	/// DICOM Study Instance UID
	public var studyUid: FHIRPrimitive<FHIRURI>?
	
	/// The imaging study from which the imaging selection is derived
	public var derivedFrom: [Reference]?
	
	/// The network service providing retrieval for the images referenced in the imaging selection
	public var endpoint: [Reference]?
	
	/// DICOM Series Instance UID
	public var seriesUid: FHIRPrimitive<FHIRURI>?
	
	/// The Frame of Reference UID for the selected images
	public var frameOfReferenceUid: FHIRPrimitive<FHIRURI>?
	
	/// Body part examined
	public var bodySite: CodeableReference?
	
	/// The selected instances
	public var instance: [ImagingSelectionInstance]?
	
	/// A specific region in a DICOM image / frame
	public var imageRegion: ImagingSelectionImageRegion?
	
	/// Designated initializer taking all required properties
	public init(code: CodeableConcept) {
		self.code = code
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
		frameOfReferenceUid: FHIRPrimitive<FHIRURI>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		imageRegion: ImagingSelectionImageRegion? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		instance: [ImagingSelectionInstance]? = nil,
		issued: FHIRPrimitive<Instant>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		performer: [ImagingSelectionPerformer]? = nil,
		seriesUid: FHIRPrimitive<FHIRURI>? = nil,
		studyUid: FHIRPrimitive<FHIRURI>? = nil,
		subject: Reference? = nil,
		text: Narrative? = nil
	) {
		self.init(code: code)
		self.basedOn = basedOn
		self.bodySite = bodySite
		self.category = category
		self.contained = contained
		self.derivedFrom = derivedFrom
		self.endpoint = endpoint
		self.`extension` = `extension`
		self.frameOfReferenceUid = frameOfReferenceUid
		self.id = id
		self.identifier = identifier
		self.imageRegion = imageRegion
		self.implicitRules = implicitRules
		self.instance = instance
		self.issued = issued
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.performer = performer
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
		case frameOfReferenceUid; case _frameOfReferenceUid
		case identifier
		case imageRegion
		case instance
		case issued; case _issued
		case performer
		case seriesUid; case _seriesUid
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
		self.frameOfReferenceUid = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .frameOfReferenceUid, auxiliaryKey: ._frameOfReferenceUid)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.imageRegion = try ImagingSelectionImageRegion(from: _container, forKeyIfPresent: .imageRegion)
		self.instance = try [ImagingSelectionInstance](from: _container, forKeyIfPresent: .instance)
		self.issued = try FHIRPrimitive<Instant>(from: _container, forKeyIfPresent: .issued, auxiliaryKey: ._issued)
		self.performer = try [ImagingSelectionPerformer](from: _container, forKeyIfPresent: .performer)
		self.seriesUid = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .seriesUid, auxiliaryKey: ._seriesUid)
		self.studyUid = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .studyUid, auxiliaryKey: ._studyUid)
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
		try frameOfReferenceUid?.encode(on: &_container, forKey: .frameOfReferenceUid, auxiliaryKey: ._frameOfReferenceUid)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try imageRegion?.encode(on: &_container, forKey: .imageRegion)
		try instance?.encode(on: &_container, forKey: .instance)
		try issued?.encode(on: &_container, forKey: .issued, auxiliaryKey: ._issued)
		try performer?.encode(on: &_container, forKey: .performer)
		try seriesUid?.encode(on: &_container, forKey: .seriesUid, auxiliaryKey: ._seriesUid)
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
		    && frameOfReferenceUid == _other.frameOfReferenceUid
		    && identifier == _other.identifier
		    && imageRegion == _other.imageRegion
		    && instance == _other.instance
		    && issued == _other.issued
		    && performer == _other.performer
		    && seriesUid == _other.seriesUid
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
		hasher.combine(frameOfReferenceUid)
		hasher.combine(identifier)
		hasher.combine(imageRegion)
		hasher.combine(instance)
		hasher.combine(issued)
		hasher.combine(performer)
		hasher.combine(seriesUid)
		hasher.combine(studyUid)
		hasher.combine(subject)
	}
}

/**
 A specific region in a DICOM image / frame.
 
 Each imaging selection might includes one or more image regions. Image regions are specified by a region type and a set
 of 2D or 3D coordinates.
 */
open class ImagingSelectionImageRegion: BackboneElement {
	
	/// Specifies the type of image region.
	public var regionType: FHIRPrimitive<ImagingSelectionGraphicType>
	
	/// 2d | 3d
	public var coordinateType: FHIRPrimitive<FHIRString>
	
	/// Specifies the type of coordinates that define the image region 2d | 3d
	public var coordinate: [FHIRPrimitive<FHIRDecimal>]
	
	/// Designated initializer taking all required properties
	public init(coordinate: [FHIRPrimitive<FHIRDecimal>], coordinateType: FHIRPrimitive<FHIRString>, regionType: FHIRPrimitive<ImagingSelectionGraphicType>) {
		self.coordinate = coordinate
		self.coordinateType = coordinateType
		self.regionType = regionType
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		coordinate: [FHIRPrimitive<FHIRDecimal>],
		coordinateType: FHIRPrimitive<FHIRString>,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		regionType: FHIRPrimitive<ImagingSelectionGraphicType>
	) {
		self.init(coordinate: coordinate, coordinateType: coordinateType, regionType: regionType)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case coordinate; case _coordinate
		case coordinateType; case _coordinateType
		case regionType; case _regionType
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.coordinate = try [FHIRPrimitive<FHIRDecimal>](from: _container, forKey: .coordinate, auxiliaryKey: ._coordinate)
		self.coordinateType = try FHIRPrimitive<FHIRString>(from: _container, forKey: .coordinateType, auxiliaryKey: ._coordinateType)
		self.regionType = try FHIRPrimitive<ImagingSelectionGraphicType>(from: _container, forKey: .regionType, auxiliaryKey: ._regionType)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try coordinate.encode(on: &_container, forKey: .coordinate, auxiliaryKey: ._coordinate)
		try coordinateType.encode(on: &_container, forKey: .coordinateType, auxiliaryKey: ._coordinateType)
		try regionType.encode(on: &_container, forKey: .regionType, auxiliaryKey: ._regionType)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? ImagingSelectionImageRegion else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return coordinate == _other.coordinate
		    && coordinateType == _other.coordinateType
		    && regionType == _other.regionType
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(coordinate)
		hasher.combine(coordinateType)
		hasher.combine(regionType)
	}
}

/**
 The selected instances.
 
 Each imaging selection includes one or more selected DICOM SOP instances.
 */
open class ImagingSelectionInstance: BackboneElement {
	
	/// DICOM SOP Instance UID
	public var uid: FHIRPrimitive<FHIRURI>
	
	/// DICOM SOP Class UID
	public var sopClass: Coding?
	
	/// List of selected frames encoded as a comma separated list of one or more non duplicate frame numbers
	public var frameList: FHIRPrimitive<FHIRString>?
	
	/// Selected observations in a DICOM SR
	public var observationUid: [FHIRPrimitive<FHIRURI>]?
	
	/// List of selected segments encoded as a comma separated list of one or more non duplicate segnent numbers
	public var segmentList: FHIRPrimitive<FHIRString>?
	
	/// List of selected regions of interest (ROI) encoded as a comma separated list of one or more non duplicate ROI
	/// numbers
	public var roiList: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	public init(uid: FHIRPrimitive<FHIRURI>) {
		self.uid = uid
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		frameList: FHIRPrimitive<FHIRString>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		observationUid: [FHIRPrimitive<FHIRURI>]? = nil,
		roiList: FHIRPrimitive<FHIRString>? = nil,
		segmentList: FHIRPrimitive<FHIRString>? = nil,
		sopClass: Coding? = nil,
		uid: FHIRPrimitive<FHIRURI>
	) {
		self.init(uid: uid)
		self.`extension` = `extension`
		self.frameList = frameList
		self.id = id
		self.modifierExtension = modifierExtension
		self.observationUid = observationUid
		self.roiList = roiList
		self.segmentList = segmentList
		self.sopClass = sopClass
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case frameList; case _frameList
		case observationUid; case _observationUid
		case roiList; case _roiList
		case segmentList; case _segmentList
		case sopClass
		case uid; case _uid
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.frameList = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .frameList, auxiliaryKey: ._frameList)
		self.observationUid = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .observationUid, auxiliaryKey: ._observationUid)
		self.roiList = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .roiList, auxiliaryKey: ._roiList)
		self.segmentList = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .segmentList, auxiliaryKey: ._segmentList)
		self.sopClass = try Coding(from: _container, forKeyIfPresent: .sopClass)
		self.uid = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .uid, auxiliaryKey: ._uid)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try frameList?.encode(on: &_container, forKey: .frameList, auxiliaryKey: ._frameList)
		try observationUid?.encode(on: &_container, forKey: .observationUid, auxiliaryKey: ._observationUid)
		try roiList?.encode(on: &_container, forKey: .roiList, auxiliaryKey: ._roiList)
		try segmentList?.encode(on: &_container, forKey: .segmentList, auxiliaryKey: ._segmentList)
		try sopClass?.encode(on: &_container, forKey: .sopClass)
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
		return frameList == _other.frameList
		    && observationUid == _other.observationUid
		    && roiList == _other.roiList
		    && segmentList == _other.segmentList
		    && sopClass == _other.sopClass
		    && uid == _other.uid
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(frameList)
		hasher.combine(observationUid)
		hasher.combine(roiList)
		hasher.combine(segmentList)
		hasher.combine(sopClass)
		hasher.combine(uid)
	}
}

/**
 Author (human or machine).
 
 Author – human or machine.
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
