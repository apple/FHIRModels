//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 6.0.0-ballot3
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
 The type of coordinates describing an image region.
 
 URL: http://hl7.org/fhir/imagingselection-3dgraphictype
 ValueSet: http://hl7.org/fhir/ValueSet/imagingselection-3dgraphictype
 */
public enum ImagingSelection3DGraphicType: String, FHIRPrimitiveType {
	
	/// an ellipse defined by four (x,y,z) triplets, the first two triplets specifying the endpoints of the major axis
	/// and the second two triplets specifying the endpoints of the minor axis.
	case ellipse
	
	/// a three-dimensional geometric surface whose plane sections are either ellipses or circles and contains three
	/// intersecting orthogonal axes, "a", "b", and "c"; the ellipsoid is defined by six (x,y,z) triplets, the first and
	/// second triplets specifying the endpoints of axis "a", the third and fourth triplets specifying the endpoints of
	/// axis "b", and the fifth and sixth triplets specifying the endpoints of axis "c".
	case ellipsoid
	
	/// multiple locations each denoted by an (x,y,z) triplet; the points need not be coplanar.
	case multipoint
	
	/// A single location denoted by a single (x,y,z) triplet.
	case point
	
	/// a series of connected line segments with ordered vertices denoted by (x,y,z) triplets, where the first and last
	/// vertices shall be the same forming a polygon; the points shall be coplanar.
	case polygon
	
	/// a series of connected line segments with ordered vertices denoted by (x,y,z) triplets; the points need not be
	/// coplanar.
	case polyline
}
