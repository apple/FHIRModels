//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.6.0-048af26
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
 The type of coordinates describing an image region.
 
 URL: http://hl7.org/fhir/imagingselection-graphictype
 ValueSet: http://hl7.org/fhir/ValueSet/imagingselection-graphictype
 */
public enum ImagingSelectionGraphicType: String, FHIRPrimitiveType {
	
	/// an ellipse defined by four (x,y,z) triplets, the first two triplets specifying the endpoints of the major axis
	/// and the second two triplets specifying the endpoints of the minor axis.
	case ELLIPSE
	
	/// a three-dimensional geometric surface whose plane sections are either ellipses or circles and contains three
	/// intersecting orthogonal axes, "a", "b", and "c"; the ellipsoid is defined by six (x,y,z) triplets, the first and
	/// second triplets specifying the endpoints of axis "a", the third and fourth triplets specifying the endpoints of
	/// axis "b", and the fifth and sixth triplets specifying the endpoints of axis "c".
	case ELLIPSOID
	
	/// multiple locations each denoted by an (x,y,z) triplet; the points need not be coplanar.
	case MULTIPOINT
	
	/// A single location denoted by a single (x,y,z) triplet.
	case POINT
	
	/// a series of connected line segments with ordered vertices denoted by (x,y,z) triplets, where the first and last
	/// vertices shall be the same forming a polygon; the points shall be coplanar.
	case POLYGON
	
	/// a series of connected line segments with ordered vertices denoted by (x,y,z) triplets; the points need not be
	/// coplanar.
	case POLYLINE
}
