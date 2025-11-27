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
 This code system represents that named RGB colors found in the [CSS4 specification](https://www.w3.org/TR/css-
 color-4/). The names are not case sensitive and different cases are encountered in common use (e.g. AliceBlue vs
 aliceblue.
 
 URL: http://hl7.org/fhir/color-names
 */
public enum ColorCodes: String, FHIRPrimitiveType {
	
	/// aliceblue
	case aliceblue
	
	/// antiquewhite
	case antiquewhite
	
	/// aqua
	case aqua
	
	/// aquamarine
	case aquamarine
	
	/// azure
	case azure
	
	/// beige
	case beige
	
	/// bisque
	case bisque
	
	/// black
	case black
	
	/// blanchedalmond
	case blanchedalmond
	
	/// blue
	case blue
	
	/// blueviolet
	case blueviolet
	
	/// brown
	case brown
	
	/// burlywood
	case burlywood
	
	/// cadetblue
	case cadetblue
	
	/// chartreuse
	case chartreuse
	
	/// chocolate
	case chocolate
	
	/// coral
	case coral
	
	/// cornflowerblue
	case cornflowerblue
	
	/// cornsilk
	case cornsilk
	
	/// crimson
	case crimson
	
	/// cyan
	case cyan
	
	/// darkblue
	case darkblue
	
	/// darkcyan
	case darkcyan
	
	/// darkgoldenrod
	case darkgoldenrod
	
	/// darkgray
	case darkgray
	
	/// darkgreen
	case darkgreen
	
	/// darkgrey
	case darkgrey
	
	/// darkkhaki
	case darkkhaki
	
	/// darkmagenta
	case darkmagenta
	
	/// darkolivegreen
	case darkolivegreen
	
	/// darkorange
	case darkorange
	
	/// darkorchid
	case darkorchid
	
	/// darkred
	case darkred
	
	/// darksalmon
	case darksalmon
	
	/// darkseagreen
	case darkseagreen
	
	/// darkslateblue
	case darkslateblue
	
	/// darkslategray
	case darkslategray
	
	/// darkslategrey
	case darkslategrey
	
	/// darkturquoise
	case darkturquoise
	
	/// darkviolet
	case darkviolet
	
	/// deeppink
	case deeppink
	
	/// deepskyblue
	case deepskyblue
	
	/// dimgray
	case dimgray
	
	/// dimgrey
	case dimgrey
	
	/// dodgerblue
	case dodgerblue
	
	/// firebrick
	case firebrick
	
	/// floralwhite
	case floralwhite
	
	/// forestgreen
	case forestgreen
	
	/// fuchsia
	case fuchsia
	
	/// gainsboro
	case gainsboro
	
	/// ghostwhite
	case ghostwhite
	
	/// gold
	case gold
	
	/// goldenrod
	case goldenrod
	
	/// gray
	case gray
	
	/// green
	case green
	
	/// greenyellow
	case greenyellow
	
	/// grey
	case grey
	
	/// honeydew
	case honeydew
	
	/// hotpink
	case hotpink
	
	/// indianred
	case indianred
	
	/// indigo
	case indigo
	
	/// ivory
	case ivory
	
	/// khaki
	case khaki
	
	/// lavender
	case lavender
	
	/// lavenderblush
	case lavenderblush
	
	/// lawngreen
	case lawngreen
	
	/// lemonchiffon
	case lemonchiffon
	
	/// lightblue
	case lightblue
	
	/// lightcoral
	case lightcoral
	
	/// lightcyan
	case lightcyan
	
	/// lightgoldenrodyellow
	case lightgoldenrodyellow
	
	/// lightgray
	case lightgray
	
	/// lightgreen
	case lightgreen
	
	/// lightgrey
	case lightgrey
	
	/// lightpink
	case lightpink
	
	/// lightsalmon
	case lightsalmon
	
	/// lightseagreen
	case lightseagreen
	
	/// lightskyblue
	case lightskyblue
	
	/// lightslategray
	case lightslategray
	
	/// lightslategrey
	case lightslategrey
	
	/// lightsteelblue
	case lightsteelblue
	
	/// lightyellow
	case lightyellow
	
	/// lime
	case lime
	
	/// limegreen
	case limegreen
	
	/// linen
	case linen
	
	/// magenta
	case magenta
	
	/// maroon
	case maroon
	
	/// mediumaquamarine
	case mediumaquamarine
	
	/// mediumblue
	case mediumblue
	
	/// mediumorchid
	case mediumorchid
	
	/// mediumpurple
	case mediumpurple
	
	/// mediumseagreen
	case mediumseagreen
	
	/// mediumslateblue
	case mediumslateblue
	
	/// mediumspringgreen
	case mediumspringgreen
	
	/// mediumturquoise
	case mediumturquoise
	
	/// mediumvioletred
	case mediumvioletred
	
	/// midnightblue
	case midnightblue
	
	/// mintcream
	case mintcream
	
	/// mistyrose
	case mistyrose
	
	/// moccasin
	case moccasin
	
	/// navajowhite
	case navajowhite
	
	/// navy
	case navy
	
	/// oldlace
	case oldlace
	
	/// olive
	case olive
	
	/// olivedrab
	case olivedrab
	
	/// orange
	case orange
	
	/// orangered
	case orangered
	
	/// orchid
	case orchid
	
	/// palegoldenrod
	case palegoldenrod
	
	/// palegreen
	case palegreen
	
	/// paleturquoise
	case paleturquoise
	
	/// palevioletred
	case palevioletred
	
	/// papayawhip
	case papayawhip
	
	/// peachpuff
	case peachpuff
	
	/// peru
	case peru
	
	/// pink
	case pink
	
	/// plum
	case plum
	
	/// powderblue
	case powderblue
	
	/// purple
	case purple
	
	/// rebeccapurple
	case rebeccapurple
	
	/// red
	case red
	
	/// rosybrown
	case rosybrown
	
	/// royalblue
	case royalblue
	
	/// saddlebrown
	case saddlebrown
	
	/// salmon
	case salmon
	
	/// sandybrown
	case sandybrown
	
	/// seagreen
	case seagreen
	
	/// seashell
	case seashell
	
	/// sienna
	case sienna
	
	/// silver
	case silver
	
	/// skyblue
	case skyblue
	
	/// slateblue
	case slateblue
	
	/// slategray
	case slategray
	
	/// slategrey
	case slategrey
	
	/// snow
	case snow
	
	/// springgreen
	case springgreen
	
	/// steelblue
	case steelblue
	
	/// tan
	case tan
	
	/// teal
	case teal
	
	/// thistle
	case thistle
	
	/// tomato
	case tomato
	
	/// turquoise
	case turquoise
	
	/// violet
	case violet
	
	/// wheat
	case wheat
	
	/// white
	case white
	
	/// whitesmoke
	case whitesmoke
	
	/// yellow
	case yellow
	
	/// yellowgreen
	case yellowgreen
}
