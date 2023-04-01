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
 The type of coordinates describing a 2D image region.
 
 URL: http://hl7.org/fhir/imagingselection-2dgraphictype
 ValueSet: http://hl7.org/fhir/ValueSet/imagingselection-2dgraphictype
 */
public enum ImagingSelection2DGraphicType: String, FHIRPrimitiveType {
	
	/// Two points shall be present; the first point is to be interpreted as the center and the second point as a point
	/// on the circumference of a circle, some form of implementation dependent representation of which is to be drawn.
	case circle
	
	/// An ellipse defined by four (x,y) pairs, the first two pairs specifying the endpoints of the major axis and the
	/// second two pairs specifying the endpoints of the minor axis.
	case ellipse
	
	/// An n-tuple list of (x,y) pair end points between which some form of implementation dependent curved lines are to
	/// be drawn. The rendered line shall pass through all the specified points.
	case interpolated
	
	/// A single location denoted by a single (x,y) pair.
	case point
	
	/// A series of connected line segments with ordered vertices denoted by (x,y) triplets; the points need not be
	/// coplanar.
	case polyline
}
