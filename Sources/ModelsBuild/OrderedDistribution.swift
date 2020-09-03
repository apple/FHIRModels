//
//  OrderedDistribution.swift
//  HealthSoftware
//
//  Generated from FHIR 4.5.0-a621ed4bdc (http://hl7.org/fhir/StructureDefinition/OrderedDistribution)
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
 An ordered list (distribution) of statistics.
 */
open class OrderedDistribution: BackboneType {
	
	/// A description of the content and value of the statistic
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Footnotes and/or explanatory notes
	public var note: [Annotation]?
	
	/// Number of intervals in an array, eg 4 for quartiles
	public var numberOfIntervals: FHIRPrimitive<FHIRInteger>
	
	/// Bottom of first interval
	public var bottomOfFirstInterval: Quantity?
	
	/// Interval
	public var interval: [OrderedDistributionInterval]
	
	/// Singular value of the statistic at the upper bound of the interval
	public var topOfInterval: Quantity?
	
	/// Designated initializer taking all required properties
	public init(interval: [OrderedDistributionInterval], numberOfIntervals: FHIRPrimitive<FHIRInteger>) {
		self.interval = interval
		self.numberOfIntervals = numberOfIntervals
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							bottomOfFirstInterval: Quantity? = nil,
							description_fhir: FHIRPrimitive<FHIRString>? = nil,
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							interval: [OrderedDistributionInterval],
							modifierExtension: [Extension]? = nil,
							note: [Annotation]? = nil,
							numberOfIntervals: FHIRPrimitive<FHIRInteger>,
							topOfInterval: Quantity? = nil)
	{
		self.init(interval: interval, numberOfIntervals: numberOfIntervals)
		self.bottomOfFirstInterval = bottomOfFirstInterval
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.note = note
		self.topOfInterval = topOfInterval
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case bottomOfFirstInterval
		case description_fhir = "description"; case _description_fhir = "_description"
		case interval
		case note
		case numberOfIntervals; case _numberOfIntervals
		case topOfInterval
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.bottomOfFirstInterval = try Quantity(from: _container, forKeyIfPresent: .bottomOfFirstInterval)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.interval = try [OrderedDistributionInterval](from: _container, forKey: .interval)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.numberOfIntervals = try FHIRPrimitive<FHIRInteger>(from: _container, forKey: .numberOfIntervals, auxiliaryKey: ._numberOfIntervals)
		self.topOfInterval = try Quantity(from: _container, forKeyIfPresent: .topOfInterval)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try bottomOfFirstInterval?.encode(on: &_container, forKey: .bottomOfFirstInterval)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try interval.encode(on: &_container, forKey: .interval)
		try note?.encode(on: &_container, forKey: .note)
		try numberOfIntervals.encode(on: &_container, forKey: .numberOfIntervals, auxiliaryKey: ._numberOfIntervals)
		try topOfInterval?.encode(on: &_container, forKey: .topOfInterval)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? OrderedDistribution else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return bottomOfFirstInterval == _other.bottomOfFirstInterval
		    && description_fhir == _other.description_fhir
		    && interval == _other.interval
		    && note == _other.note
		    && numberOfIntervals == _other.numberOfIntervals
		    && topOfInterval == _other.topOfInterval
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(bottomOfFirstInterval)
		hasher.combine(description_fhir)
		hasher.combine(interval)
		hasher.combine(note)
		hasher.combine(numberOfIntervals)
		hasher.combine(topOfInterval)
	}
}

/**
 Interval.
 */
open class OrderedDistributionInterval: Element {
	
	/// Relative order of interval
	public var rankOrder: FHIRPrimitive<FHIRInteger>
	
	/// Values and parameters for a single statistic related to the interval
	public var intervalStatistic: [Statistic]?
	
	/// Designated initializer taking all required properties
	public init(rankOrder: FHIRPrimitive<FHIRInteger>) {
		self.rankOrder = rankOrder
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
							`extension`: [Extension]? = nil,
							id: FHIRPrimitive<FHIRString>? = nil,
							intervalStatistic: [Statistic]? = nil,
							rankOrder: FHIRPrimitive<FHIRInteger>)
	{
		self.init(rankOrder: rankOrder)
		self.`extension` = `extension`
		self.id = id
		self.intervalStatistic = intervalStatistic
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case intervalStatistic
		case rankOrder; case _rankOrder
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.intervalStatistic = try [Statistic](from: _container, forKeyIfPresent: .intervalStatistic)
		self.rankOrder = try FHIRPrimitive<FHIRInteger>(from: _container, forKey: .rankOrder, auxiliaryKey: ._rankOrder)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try intervalStatistic?.encode(on: &_container, forKey: .intervalStatistic)
		try rankOrder.encode(on: &_container, forKey: .rankOrder, auxiliaryKey: ._rankOrder)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? OrderedDistributionInterval else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return intervalStatistic == _other.intervalStatistic
		    && rankOrder == _other.rankOrder
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(intervalStatistic)
		hasher.combine(rankOrder)
	}
}
