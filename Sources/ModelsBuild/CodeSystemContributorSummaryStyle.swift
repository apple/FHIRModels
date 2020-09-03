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
 Used to code the format of the display string.
 
 URL: http://terminology.hl7.org/CodeSystem/contributor-summary-style
 ValueSet: http://hl7.org/fhir/ValueSet/contributor-summary-style
 */
public enum ContributorSummaryStyle: String, FHIRPrimitiveType {
	
	/// Example: Jennifer Laskowski et al.
	case a1full = "A1full"
	
	/// Example: Laskowski J et al.
	case a1init = "A1init"
	
	/// Example: Jennifer Laskowski, Brandon Renner, Matthew C. Pickering, et al.
	case a3full = "A3full"
	
	/// Example:  Laskowski J, Renner B, Pickering MC, et al.
	case a3init = "A3init"
	
	/// Example: Jennifer Laskowski, Brandon Renner, Matthew C. Pickering, Natalie J. Serkova, Peter M. Smith-Jones,
	/// Eric T. Clambey, et al.
	case a6full = "A6full"
	
	/// Example: Laskowski J, Renner B, Pickering MC, Serkova NJ, Smith-Jones PM, Clambey ET, et al.
	case a6init = "A6init"
	
	/// Example: Jennifer Laskowski, Brandon Renner, Matthew C. Pickering, Natalie J. Serkova, Peter M. Smith-Jones,
	/// Eric T. Clambey, Raphael A. Nemenoff, Joshua M. Thurman.
	case aAllfull = "AAllfull"
	
	/// Example: Jennifer Laskowski, Brandon Renner, Matthew C. Pickering, Natalie J. Serkova, Peter M. Smith-Jones,
	/// Eric T. Clambey, Raphael A. Nemenoff, and Joshua M. Thurman.
	case aAllfullwithand = "AAllfullwithand"
	
	/// Example: Jennifer Laskowski, Brandon Renner, Matthew C. Pickering, Natalie J. Serkova, Peter M. Smith-Jones,
	/// Eric T. Clambey, Raphael A. Nemenoff, & Joshua M. Thurman.
	case aAllfullwithampersand = "AAllfullwithampersand"
	
	/// Example: Laskowski J, Renner B, Pickering MC, Serkova NJ, Smith-Jones PM, Clambey ET, Nemenoff RA, Thurman JM.
	case aAllinit = "AAllinit"
	
	/// Example: Laskowski J, Renner B, Pickering MC, Serkova NJ, Smith-Jones PM, Clambey ET, Nemenoff RA, and Thurman
	/// JM.
	case aAllinitwithand = "AAllinitwithand"
	
	/// Example: Laskowski J, Renner B, Pickering MC, Serkova NJ, Smith-Jones PM, Clambey ET, Nemenoff RA, & Thurman JM.
	case aAllinitwithampersand = "AAllinitwithampersand"
	
	/// Jennnifer Laskowski designed project; developed and performed experiments; collected and analyzed data; wrote
	/// and revised manuscript. Brandon Renner performed critical review of manuscript. Matthew C. Pickering provided
	/// technical advice and contributed to study design. Natalie J. Serkova and Peter M. Smith-Jones performed PET
	/// imaging and associated analyses. Eric T. Clambey and Raphael A. Nemenoff provided conceptual and technical
	/// guidance and critical review of manuscript. Joshua M. Thurman contributed to experimental design and wrote
	/// manuscript.
	case contrFullByPerson = "ContrFullByPerson"
	
	/// J.L. designed project; developed and performed experiments; collected and analyzed data; wrote and revised
	/// manuscript. B.R. performed critical review of manuscript. M.C.P. provided technical advice and contributed to
	/// study design. N.J.S and P.M.S.-J. performed PET imaging and associated analyses. E.T.C. and R.A.N provided
	/// conceptual and technical guidance and critical review of manuscript. J.M.T contributed to experimental design
	/// and wrote manuscript.
	case contrInitByPerson = "ContrInitByPerson"
	
	/// Project design by Jennnifer Laskowski (JL), Experiment design by JL and Joshua M. Thurman (JMT), technical
	/// advice and study design contribution by Matthew C. Pickering, experiments performed by JL, data collection and
	/// analysis by JL, PET imaging and associated analyses by Natalie J. Serkova and Peter M. Smith-Jones, conceptual
	/// and technical guidance by Eric T. Clambey (ETC) and Raphael A. Nemenoff (RAN), manuscript writing by JL and JMT,
	/// manuscript revised critically by JL, Brandon Renner, ETC, and RAN.
	case contrFullByContr = "ContrFullByContr"
	
	/// Project design by JL, Experiment design by JL and JMT, technical advice and study design contribution by MCP,
	/// experiments performed by JL, data collection and analysis by JL, PET imaging and associated analyses by NJS and
	/// PMS-J, conceptual and technical guidance by ETC and RAN, manuscript writing by JL and JMT, manuscript revised
	/// critically by JL, BR, ETC, and RAN.
	case contrInitByContr = "ContrInitByContr"
}
