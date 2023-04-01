//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.3.0
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
 Materials used or needed to feed the patient. These values are provided as a suggestive example.
 
 URL: http://hl7.org/fhir/feeding-device
 */
public enum FeedingDeviceCodes: String, FHIRPrimitiveType {
	
	/// Angled utensils definition:
	case angledUtensil = "angled-utensil"
	
	/// Automated feeding devices definition:
	case autofeedingDevice = "autofeeding-device"
	
	/// Enlarged, cross-cut nipple definition:
	case bigcutNipple = "bigcut-nipple"
	
	/// Foam handle utensils definition:
	case foamHandle = "foam-handle"
	
	/// Glass with lid/sippy cup definition:
	case glassLid = "glass-lid"
	
	/// Haberman bottle definition:
	case habermanBottle = "haberman-bottle"
	
	/// Double handhold on glass/cup definition:
	case handholdCup = "handhold-cup"
	
	/// Middle flow nipple definition:
	case midfloNipple = "midflo-nipple"
	
	/// Nose cup definition:
	case noseCup = "nose-cup"
	
	/// Orthodontic nipple definition:
	case orthoNipple = "ortho-nipple"
	
	/// Preemie nipple definition:
	case preemieNipple = "preemie-nipple"
	
	/// Provale Cup definition:
	case provaleCup = "provale-cup"
	
	/// Rocker knife definition:
	case rockerKnife = "rocker-knife"
	
	/// Rubber matting under tray definition:
	case rubberMat = "rubber-mat"
	
	/// Scoop plate definition:
	case scoopPlate = "scoop-plate"
	
	/// Sippy cup without valve definition:
	case sippyNoValve = "sippy-no-valve"
	
	/// Sippy cup with valve definition:
	case sippyValve = "sippy-valve"
	
	/// Slow flow nipple definition:
	case slofloNipple = "sloflo-nipple"
	
	/// Spout cup definition:
	case spoutCup = "spout-cup"
	
	/// Standard nipple definition:
	case standardNipple = "standard-nipple"
	
	/// Straw definition:
	case straw
	
	/// Hand wrap utensil holder definition:
	case utensilHolder = "utensil-holder"
}
