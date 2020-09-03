//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.5.0-a621ed4bdc
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
 Materials used or needed to feed the patient.
 
 URL: http://hl7.org/fhir/feeding-device
 */
public enum FeedingDeviceCodes: String, FHIRPrimitiveType {
	
	/// Standard nipple definition:
	case standardNipple = "standard-nipple"
	
	/// Preemie nipple definition:
	case preemieNipple = "preemie-nipple"
	
	/// Orthodontic nipple definition:
	case orthoNipple = "ortho-nipple"
	
	/// Slow flow nipple definition:
	case slofloNipple = "sloflo-nipple"
	
	/// Middle flow nipple definition:
	case midfloNipple = "midflo-nipple"
	
	/// Enlarged, cross-cut nipple definition:
	case bigcutNipple = "bigcut-nipple"
	
	/// Haberman bottle definition:
	case habermanBottle = "haberman-bottle"
	
	/// Sippy cup with valve definition:
	case sippyValve = "sippy-valve"
	
	/// Sippy cup without valve definition:
	case sippyNoValve = "sippy-no-valve"
	
	/// Provale Cup definition:
	case provaleCup = "provale-cup"
	
	/// Glass with lid/sippy cup definition:
	case glassLid = "glass-lid"
	
	/// Double handhold on glass/cup definition:
	case handholdCup = "handhold-cup"
	
	/// Rubber matting under tray definition:
	case rubberMat = "rubber-mat"
	
	/// Straw definition:
	case straw = "straw"
	
	/// Nose cup definition:
	case noseCup = "nose-cup"
	
	/// Scoop plate definition:
	case scoopPlate = "scoop-plate"
	
	/// Hand wrap utensil holder definition:
	case utensilHolder = "utensil-holder"
	
	/// Foam handle utensils definition:
	case foamHandle = "foam-handle"
	
	/// Angled utensils definition:
	case angledUtensil = "angled-utensil"
	
	/// Spout cup definition:
	case spoutCup = "spout-cup"
	
	/// Automated feeding devices definition:
	case autofeedingDevice = "autofeeding-device"
	
	/// Rocker knife definition:
	case rockerKnife = "rocker-knife"
}
