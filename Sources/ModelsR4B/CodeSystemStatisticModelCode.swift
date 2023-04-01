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
 The role that the assertion variable plays.
 
 URL: http://terminology.hl7.org/CodeSystem/statistic-model-code
 ValueSet: http://hl7.org/fhir/ValueSet/statistic-model-code
 */
public enum StatisticModelCode: String, FHIRPrimitiveType {
	
	/// Used for adjusted analysis, paired with variable element(s)
	case adjusted
	
	/// Used for ANOVA method of analysis, may be paired with "value" to express degrees of freedom
	case anova
	
	/// Used for one-way ANOVA method of analysis, may be paired with "value" to express degrees of freedom
	case anovaOneWay
	
	/// Used for 3-way ANOVA method of analysis, may be paired with "value" to express degrees of freedom
	case anovaThreeWay
	
	/// Used for 2-way ANOVA without replication method of analysis, may be paired with "value" to express degrees of
	/// freedom
	case anovaTwoWay
	
	/// Used for 2-way ANOVA with replication method of analysis, may be paired with "value" to express degrees of
	/// freedom
	case anovaTwoWayReplication
	
	/// Used for Binomial Distribution for Regression, no additional elements needed
	case binomialDistributionRegression
	
	/// Used for Chi-square test, may be paired with "value" to express degrees of freedom
	case chiSquareTest
	
	/// Used for Chi-square test for homogeneity, may be paired with "value" to express degrees of freedom
	case chiSquareTestHomogeneity
	
	/// Used for Chi-square test for trend, may be paired with "value" to express degrees of freedom
	case chiSquareTestTrend
	
	/// Used for Cox proportional hazards method of analysis, no additional elements needed
	case coxProportionalHazards
	
	/// Used for Dersimonian-Laird method of tau estimation, no additional elements needed
	case dersimonianLairdMethod
	
	/// From a fixed-effects analysis, no additional elements needed
	case effectsFixed
	
	/// From a random-effects analysis, no additional elements needed
	case effectsRandom
	
	/// Used for Empirical Bayes method of tau estimation, no additional elements needed
	case empiricalBayes
	
	/// Used for Fisher's exact test, may be paired with "value" to express degrees of freedom
	case fishersExactTest
	
	/// Used for Friedman test, no additional elements needed
	case friedmanTest
	
	/// Used for GLM (Generalized Linear Model), no additional elements needed
	case glm
	
	/// Used for GLM with generalized logit link, no additional elements needed
	case glmGeneralizedLogit
	
	/// Used for GLM with identity link, no additional elements needed
	case glmIdentity
	
	/// Used for GLM with log link, no additional elements needed
	case glmLog
	
	/// Used for GLM with logit link, no additional elements needed
	case glmLogit
	
	/// Used for GLM with probit link, no additional elements needed
	case glmProbit
	
	/// Used for Generalized linear mixed model (GLMM), no additional elements needed
	case glmm
	
	/// Used for GLMM with generalized logit link, no additional elements needed
	case glmmGeneralizedLogit
	
	/// Used for GLMM with identity link, no additional elements needed
	case glmmIdentity
	
	/// Used for GLMM with log link, no additional elements needed
	case glmmLog
	
	/// Used for GLMM with logit link, no additional elements needed
	case glmmLogit
	
	/// Used for GLMM with probit link, no additional elements needed
	case glmmProbit
	
	/// Used for Goodman Kruska’s Gamma, no additional elements needed
	case goodmanKruskasGamma
	
	/// Hartung-Knapp/Hartung-Knapp-Sidik-Jonkman adjustment used in meta-analysis, no additional elements needed
	case hartungKnapp
	
	/// Used for Hedges method of tau estimation, no additional elements needed
	case hedgesMethod
	
	/// Used for Hunter-Schmidt method of tau estimation, no additional elements needed
	case hunterSchmidt
	
	/// Used for interaction term, paired with "value" and two or more variable elements
	case interactionTerm
	
	/// Used for inverse variance method of meta-analysis, no additional elements needed
	case inverseVariance
	
	/// Used for Kendall correlation, no additional elements needed
	case kendallCorrelation
	
	/// Used for Kruskal Wallis test, may be paired with "value" to express degrees of freedom
	case kruskalWallisTest
	
	/// Used for linear regression method of analysis, no additional elements needed
	case linearRegression
	
	/// Used for logistic regression method of analysis, no additional elements needed
	case logisticRegression
	
	/// Used for Mann-Whitney U test, no additional elements needed
	case mannWhitneyUTest
	
	/// Used for multivariate ANOVA (MANOVA) method of analysis, may be paired with "value" to express degrees of
	/// freedom
	case manova
	
	/// Used for Mantel-Haenszel method, no additional elements needed
	case manteHaenszelMethod
	
	/// Used for Maximum Likelihood method of tau estimation, no additional elements needed
	case maximumLikelihood
	
	/// Used for McNemar's test, no additional elements needed
	case mcnemarsTest
	
	/// Used for meta-analysis, no additional elements needed
	case metaAnalysis
	
	/// Modified Hartung-Knapp/Hartung-Knapp-Sidik-Jonkman adjustment used in meta-analysis, no additional elements
	/// needed
	case modifiedHartungKnapp
	
	/// Used for Multinomial Distribution for Regression, no additional elements needed
	case multinomialDistributionRegression
	
	/// Used for Negative Binomial Regression, no additional elements needed
	case negativeBinomialRegression
	
	/// Used for 1-sample t-test, may be paired with "value" to express degrees of freedom
	case oneSampleTTest
	
	/// Used for one-tailed test (1 threshold), no additional elements needed
	case oneTailedTest
	
	/// Used for paired t-test, may be paired with "value" to express degrees of freedom
	case pairedTTest
	
	/// Used for Paule-Mandel method of tau estimation, no additional elements needed
	case pauleMandelMethod
	
	/// Used for Pearson correlation, no additional elements needed
	case pearsonCorrelation
	
	/// Used for Peto method of meta-analysis, no additional elements needed
	case petoMethod
	
	/// Used for Poisson Regression, no additional elements needed
	case poissonRegression
	
	/// Used for Polynomial regression method of analysis, no additional elements needed
	case polynomialRegression
	
	/// Generalized linear mixed model (GLMM) method for pooling in meta-analysis
	case poolGeneralizedLinearMixedModel
	
	/// Inverse variance method for pooling in meta-analysis
	case poolInverseVariance
	
	/// Mantel-Haenszel method for pooling in meta-analysis
	case poolMantelHaenzsel
	
	/// Peto method for pooling in meta-analysis
	case poolPeto
	
	/// Used for Restricted Maximum Likelihood method of tau estimation, no additional elements needed
	case restrictedLikelihood
	
	/// Used for Sidik-Jonkman method of tau estimation, no additional elements needed
	case sidikJonkman
	
	/// Used for sign test, no additional elements needed
	case signTest
	
	/// Used for Spearman correlation, no additional elements needed
	case spearmanCorrelation
	
	/// Dersimonian-Laird method for tau squared
	case tauDersimonianLaird
	
	/// Empirical Bayes method for tau squared
	case tauEmpiricalBayes
	
	/// Hedges method for tau squared
	case tauHedges
	
	/// Hunter-Schmidt method for tau squared
	case tauHunterSchmidt
	
	/// Maximum Likelihood method for tau squared
	case tauMaximumLikelihood
	
	/// Paule-Mandel method for tau squared
	case tauPauleMandel
	
	/// Restricted Maximum Likelihood method for tau squared
	case tauRestrictedMaximumLikelihood
	
	/// Sidik-Jonkman method for tau squared
	case tauSidikJonkman
	
	/// Used for 2-sample t-test, may be paired with "value" to express degrees of freedom
	case twoSampleTTest
	
	/// Used for two-tailed test (2 threshold), no additional elements needed
	case twoTailedTest
	
	/// Used for Wilcoxon rank-sum test, no additional elements needed
	case wilcoxonRankSumTest
	
	/// Used for Wilcoxon signed-rank test, no additional elements needed
	case wilcoxonSignedRankTest
	
	/// Used for z-test, no additional elements needed
	case zTest
	
	/// Zero-cell adjustment done by adding a constant to all cells of affected studies, paired with "value" to define
	/// the constant
	case zeroCellConstant
	
	/// Zero-cell adjustment done by treatment arm continuity correction, no additional elements needed
	case zeroCellContinuityCorrection
}
