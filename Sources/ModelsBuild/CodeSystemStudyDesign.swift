//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 6.0.0-ballot2
//  Copyright 2024 Apple Inc.
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
 This is a set of terms for study design characteristics.
 
 URL: http://hl7.org/fhir/study-design
 ValueSet: http://hl7.org/fhir/ValueSet/study-design
 */
public enum StudyDesign: String, FHIRPrimitiveType {
	
	/// A study design in which an independent variable (an exposure or intervention) is prospectively assigned or
	/// modified by the investigator to evaluate a response in the dependent variable (an effect or outcome).
	case SEVCO01001 = "SEVCO:01001"
	
	/// A study design in which the independent variables (exposures or interventions) are not prospectively assigned or
	/// modified by the investigator.
	case SEVCO01002 = "SEVCO:01002"
	
	/// An interventional study design in which an independent variable (an exposure or intervention) is prospectively
	/// assigned or modified by random chance to separate groups.
	case SEVCO01003 = "SEVCO:01003"
	
	/// An interventional study design with a method of allocation that is not limited to random chance but is intended
	/// to produce similar baseline groups for experimentation.
	case SEVCO01004 = "SEVCO:01004"
	
	/// An interventional study design in which an independent variable (an exposure or intervention) is prospectively
	/// assigned or modified by methods other than random chance to separate groups.
	case SEVCO01005 = "SEVCO:01005"
	
	/// A randomized assignment in which each participant has the same prespecified likelihood of being assigned to a
	/// group as all other participants, independent of the assignment of any other participant.
	case SEVCO01006 = "SEVCO:01006"
	
	/// A randomized assignment in which participants are stratified into groups based on prognostic variables and then
	/// randomized into balanced treatment groups
	case SEVCO01007 = "SEVCO:01007"
	
	/// A randomized assignment in which a pre-specified number of subjects is assigned to a block containing the same
	/// pre-specified ratio of group assignments in random order.
	case SEVCO01008 = "SEVCO:01008"
	
	/// A randomized assignment in which a participant’s group assignment probability is adjusted based on any factor
	/// such that the likelihood of assignment is not the same for all participants.
	case SEVCO01009 = "SEVCO:01009"
	
	/// A study design in which two or more groups are compared.
	case SEVCO01010 = "SEVCO:01010"
	
	/// A comparative study design in which the groups are compared concurrently and participants are expected to remain
	/// in the groups being compared for the entire duration of participation in the study.
	case SEVCO01011 = "SEVCO:01011"
	
	/// A comparative study design in which participants receive two or more alternative exposures during separate
	/// periods of time.
	case SEVCO01012 = "SEVCO:01012"
	
	/// A comparative study design in which the groups being compared are defined by outcome presence (case) or absence
	/// (control).
	case SEVCO01013 = "SEVCO:01013"
	
	/// A comparative study design in which individual participants in different groups being compared are paired or
	/// matched into sets based on selected attributes for within-set analysis.
	case SEVCO01014 = "SEVCO:01014"
	
	/// A comparative study design in which participants are allocated to exposures (interventions) by their membership
	/// in groups (called clusters) rather than by individualized assignments.
	case SEVCO01015 = "SEVCO:01015"
	
	/// A non-comparative study design in which two or more participants are evaluated in a single group (or cohort).
	case SEVCO01016 = "SEVCO:01016"
	
	/// A non-comparative study design in which a single participant is evaluated.
	case SEVCO01017 = "SEVCO:01017"
	
	/// A longitudinal data collection which includes a set of time-ordered observations.
	case SEVCO01018 = "SEVCO:01018"
	
	/// A time series design which includes comparisons of observations before and after an event or exposure.
	case SEVCO01019 = "SEVCO:01019"
	
	/// A matched study design in which related or non-related family members are compared.
	case SEVCO01020 = "SEVCO:01020"
	
	/// A family study design in which twin siblings are compared.
	case SEVCO01021 = "SEVCO:01021"
	
	/// A study design in which the unit of observation is a population or community.
	case SEVCO01022 = "SEVCO:01022"
	
	/// A study design with no comparisons between groups with different exposures and no comparisons between groups
	/// with different outcomes.
	case SEVCO01023 = "SEVCO:01023"
	
	/// A crossover cohort design in which two or more cohorts have different orders of exposures.
	case SEVCO01024 = "SEVCO:01024"
	
	/// A crossover cohort design in which all participants are in a single cohort with the same order of exposures.
	case SEVCO01025 = "SEVCO:01025"
	
	/// A study design process in which the study data are obtained from a source of data collected during a routine
	/// process in the natural environment rather than using a process designed or controlled by the researcher.
	case SEVCO01026 = "SEVCO:01026"
	
	/// A study design process in which data is collected at a single point in time.
	case SEVCO01027 = "SEVCO:01027"
	
	/// A study design process in which data is collected at two or more points in time.
	case SEVCO01028 = "SEVCO:01028"
	
	/// Interventional research in which one or more healthcare-related actions (i.e., a diagnostic, prognostic,
	/// therapeutic, preventive or screening method or intervention) is evaluated for effects on health-related
	/// biomedical or behavioral processes and/or outcomes.
	case SEVCO01029 = "SEVCO:01029"
	
	/// A clinical trial to gather initial evidence in humans to support further investigation of an intervention.
	case SEVCO01030 = "SEVCO:01030"
	
	/// A clinical trial that is conducted early in phase 1, involves very limited human exposure, and has no
	/// therapeutic or diagnostic intent (e.g., screening studies, microdose studies).
	case SEVCO01031 = "SEVCO:01031"
	
	///  A clinical trial with a component meeting the definition of phase 1 trial and a component meeting the
	/// definition of phase 2 trial.
	case SEVCO01032 = "SEVCO:01032"
	
	/// A clinical trial to gather evidence of effectiveness and safety for an intervention in patients with the disease
	/// or condition under study, but not intended to provide an adequate basis for regulatory approval for clinical
	/// use.
	case SEVCO01033 = "SEVCO:01033"
	
	/// A clinical trial with a component meeting the definition of phase 2 trial and a component meeting the definition
	/// of phase 3 trial.
	case SEVCO01034 = "SEVCO:01034"
	
	/// A clinical trial to gather the evidence of effectiveness and safety of an intervention, intended to provide an
	/// adequate basis for regulatory approval for clinical use.
	case SEVCO01035 = "SEVCO:01035"
	
	/// A clinical trial to gather additional evidence of effectiveness and safety of an intervention for an already
	/// approved clinical use.
	case SEVCO01036 = "SEVCO:01036"
	
	/// An observational study to identify adverse events related to the use of an approved clinical intervention.
	case SEVCO01037 = "SEVCO:01037"
	
	/// A clinical trial that provides a means for obtaining an experimental drug or device for patients who are not
	/// adequately treated by existing therapy, who do not meet the eligibility criteria for enrollment, or who are
	/// otherwise unable to participate in another clinical study.
	case SEVCO01038 = "SEVCO:01038"
	
	/// Real world data collection from data obtained routinely for a purpose of recording healthcare delivery in a
	/// record controlled by a healthcare professional.
	case SEVCO01039 = "SEVCO:01039"
	
	/// Real world data collection from data obtained routinely for a purpose of recording healthcare financing.
	case SEVCO01040 = "SEVCO:01040"
	
	/// A clinical trial conducted under conditions of routine clinical practice.
	case SEVCO01041 = "SEVCO:01041"
	
	/// A study design process in which the data are collected from a system organized to obtain and maintain uniform
	/// data for discovery and analysis, and this system is organized prior to the current study.
	case SEVCO01042 = "SEVCO:01042"
	
	/// A study design feature in which two or more institutions are responsible for the conduct of the study.
	case SEVCO01043 = "SEVCO:01043"
	
	/// A study design in which the unit of observation is a population or community defined by social relationships or
	/// physical surroundings.
	case SEVCO01044 = "SEVCO:01044"
	
	/// A study design process in which the data are recorded and collected during the study for the purpose of the same
	/// study.
	case SEVCO01045 = "SEVCO:01045"
	
	/// Real world data collection from data obtained routinely for a purpose of repeated testing.
	case SEVCO01046 = "SEVCO:01046"
	
	/// Real world data collection from data obtained routinely for a purpose of testing, such as diagnostic testing or
	/// screening examination.
	case SEVCO01048 = "SEVCO:01048"
	
	/// A study design process in which the data are collected from data obtained during a different study than the
	/// current study.
	case SEVCO01049 = "SEVCO:01049"
	
	/// Real world data collection from data obtained routinely for a purpose of recording data related to personal
	/// health in a record controlled by the person, guardian, or caretaker.
	case SEVCO01050 = "SEVCO:01050"
	
	/// A study design process in which data are collected from two or more geographic locations.
	case SEVCO01051 = "SEVCO:01051"
	
	/// A study design feature in which one or more outcomes are reported directly from the patient without
	/// interpretation by a clinician or researcher.
	case SEVCO01052 = "SEVCO:01052"
	
	/// A study design feature in which one or more measures are outcomes that patients directly care about, i.e.
	/// outcomes that are directly related to patients' experience of their life.
	case SEVCO01053 = "SEVCO:01053"
	
	/// A study design feature in which one or more measures are outcomes that relate to a health or illness condition
	/// but are not outcomes which patients directly care about.
	case SEVCO01054 = "SEVCO:01054"
	
	/// A study design process in which study participants are not informed of their intervention assignment.
	case SEVCO01060 = "SEVCO:01060"
	
	/// A study design process in which the people administering the intervention are not informed of the intervention
	/// assignment.
	case SEVCO01061 = "SEVCO:01061"
	
	/// A study design process in which the people determining the outcome are not informed of the intervention
	/// assignment.
	case SEVCO01062 = "SEVCO:01062"
	
	/// A study design process in which the people managing or processing the data and statistical analysis are not
	/// informed of the intervention assignment.
	case SEVCO01063 = "SEVCO:01063"
	
	/// A study design process in which all parties influencing study enrollment and allocation to study groups are
	/// unaware of the group assignment for the study participant at the time of enrollment and allocation.
	case SEVCO01064 = "SEVCO:01064"
	
	/// A study design feature in which one or more outcomes are actions or behaviors of a healthcare professional or
	/// care team.
	case SEVCO01085 = "SEVCO:01085"
	
	/// A study design process in which data are analyzed with mathematical or statistical methods and formulas.
	case SEVCO01086 = "SEVCO:01086"
	
	/// A study design process in which data are analyzed, without primary reliance on mathematical or statistical
	/// techniques, by coding and organizing data to provide interpretation or understanding of experiences or
	/// hypotheses.
	case SEVCO01087 = "SEVCO:01087"
	
	/// A study design feature in which the study intent is to compare two or more interventions or exposures.
	case SEVCO01088 = "SEVCO:01088"
	
	/// A study design feature specifying the intent of the study.
	case SEVCO01089 = "SEVCO:01089"
	
	/// A study design feature in which the study intent is to compare two or more interventions with respect to
	/// effectiveness in ideal conditions.
	case SEVCO01090 = "SEVCO:01090"
	
	/// A study design feature in which the study intent is to compare two or more interventions with respect to
	/// benefits and/or harms.
	case SEVCO01091 = "SEVCO:01091"
	
	/// A study design feature in which the study intent is to compare two or more interventions with respect to harms.
	case SEVCO01092 = "SEVCO:01092"
	
	/// A study goal with the intent to compare two or more interventions or exposures and determine that any difference
	/// in effects is within a prespecified range representing absence of a meaningful difference.
	case SEVCO01093 = "SEVCO:01093"
	
	/// A study goal with the intent to compare two or more interventions or exposures and determine that any difference
	/// in effects is below a prespecified value representing a threshold between a meaningful difference and absence of
	/// a meaningful difference.
	case SEVCO01094 = "SEVCO:01094"
	
	/// A study goal with the intent to compare two or more interventions or exposures and detect a difference in
	/// effects.
	case SEVCO01095 = "SEVCO:01095"
	
	/// A study goal to assess the efficiency, effectiveness, and impact of a given program, process, person or piece of
	/// equipment.
	case SEVCO01096 = "SEVCO:01096"
	
	/// A study goal with the intent to generate a predictive algorithm.
	case SEVCO01097 = "SEVCO:01097"
	
	/// A study goal with the intent to determine the reliability and/or performance of a procedure for a specific
	/// predictive, classification, measurement, or communication purpose.
	case SEVCO01098 = "SEVCO:01098"
}
