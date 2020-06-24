//
//  FHIRIntegerRepresentable.swift
//  HealthSoftware
//
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

public protocol FHIRIntegerRepresentable: ExpressibleByIntegerLiteral, Equatable, Decodable {
	
	var integer: Self.IntegerLiteralType { get set }
}

extension FHIRIntegerRepresentable where IntegerLiteralType: Equatable {
	
	public static func ==(l: Self, r: Self) -> Bool {
		return l.integer == r.integer
	}
}

// TODO: implement these
// extension FHIRIntegerRepresentable {

// 	public static func ==(l: Self, r: Int32) -> Bool {
// 		return l.integer == r
// 	}

// 	public static func ==(l: Self, r: Int16) -> Bool {
// 		return l.integer == r
// 	}

// 	public static func ==(l: Self, r: Int8) -> Bool {
// 		return l.integer == r
// 	}

// 	public static func ==(l: Self, r: Int) -> Bool {
// 		return l.integer == r
// 	}

// 	public static func ==(l: Int32, r: Self) -> Bool {
// 		return l == r.integer
// 	}

// 	public static func ==(l: Int16, r: Self) -> Bool {
// 		return l == r.integer
// 	}

// 	public static func ==(l: Int8, r: Self) -> Bool {
// 		return l == r.integer
// 	}

// 	public static func ==(l: Int, r: Self) -> Bool {
// 		return l == r.integer
// 	}
// }
