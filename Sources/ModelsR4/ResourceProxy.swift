//
//  ResourceProxy.swift
//  HealthSoftware
//
//  Generated from FHIR 4.0.1-9346c8cc45
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

public enum ResourceProxy: FHIRType {
	case account(Account)
	case activityDefinition(ActivityDefinition)
	case adverseEvent(AdverseEvent)
	case allergyIntolerance(AllergyIntolerance)
	case appointment(Appointment)
	case appointmentResponse(AppointmentResponse)
	case auditEvent(AuditEvent)
	case basic(Basic)
	case binary(Binary)
	case biologicallyDerivedProduct(BiologicallyDerivedProduct)
	case bodyStructure(BodyStructure)
	case bundle(Bundle)
	case capabilityStatement(CapabilityStatement)
	case carePlan(CarePlan)
	case careTeam(CareTeam)
	case catalogEntry(CatalogEntry)
	case chargeItem(ChargeItem)
	case chargeItemDefinition(ChargeItemDefinition)
	case claim(Claim)
	case claimResponse(ClaimResponse)
	case clinicalImpression(ClinicalImpression)
	case codeSystem(CodeSystem)
	case communication(Communication)
	case communicationRequest(CommunicationRequest)
	case compartmentDefinition(CompartmentDefinition)
	case composition(Composition)
	case conceptMap(ConceptMap)
	case condition(Condition)
	case consent(Consent)
	case contract(Contract)
	case coverage(Coverage)
	case coverageEligibilityRequest(CoverageEligibilityRequest)
	case coverageEligibilityResponse(CoverageEligibilityResponse)
	case detectedIssue(DetectedIssue)
	case device(Device)
	case deviceDefinition(DeviceDefinition)
	case deviceMetric(DeviceMetric)
	case deviceRequest(DeviceRequest)
	case deviceUseStatement(DeviceUseStatement)
	case diagnosticReport(DiagnosticReport)
	case documentManifest(DocumentManifest)
	case documentReference(DocumentReference)
	case domainResource(DomainResource)
	case effectEvidenceSynthesis(EffectEvidenceSynthesis)
	case encounter(Encounter)
	case endpoint(Endpoint)
	case enrollmentRequest(EnrollmentRequest)
	case enrollmentResponse(EnrollmentResponse)
	case episodeOfCare(EpisodeOfCare)
	case eventDefinition(EventDefinition)
	case evidence(Evidence)
	case evidenceVariable(EvidenceVariable)
	case exampleScenario(ExampleScenario)
	case explanationOfBenefit(ExplanationOfBenefit)
	case familyMemberHistory(FamilyMemberHistory)
	case flag(Flag)
	case goal(Goal)
	case graphDefinition(GraphDefinition)
	case group(Group)
	case guidanceResponse(GuidanceResponse)
	case healthcareService(HealthcareService)
	case imagingStudy(ImagingStudy)
	case immunization(Immunization)
	case immunizationEvaluation(ImmunizationEvaluation)
	case immunizationRecommendation(ImmunizationRecommendation)
	case implementationGuide(ImplementationGuide)
	case insurancePlan(InsurancePlan)
	case invoice(Invoice)
	case library(Library)
	case linkage(Linkage)
	case list(List)
	case location(Location)
	case measure(Measure)
	case measureReport(MeasureReport)
	case media(Media)
	case medication(Medication)
	case medicationAdministration(MedicationAdministration)
	case medicationDispense(MedicationDispense)
	case medicationKnowledge(MedicationKnowledge)
	case medicationRequest(MedicationRequest)
	case medicationStatement(MedicationStatement)
	case medicinalProduct(MedicinalProduct)
	case medicinalProductAuthorization(MedicinalProductAuthorization)
	case medicinalProductContraindication(MedicinalProductContraindication)
	case medicinalProductIndication(MedicinalProductIndication)
	case medicinalProductIngredient(MedicinalProductIngredient)
	case medicinalProductInteraction(MedicinalProductInteraction)
	case medicinalProductManufactured(MedicinalProductManufactured)
	case medicinalProductPackaged(MedicinalProductPackaged)
	case medicinalProductPharmaceutical(MedicinalProductPharmaceutical)
	case medicinalProductUndesirableEffect(MedicinalProductUndesirableEffect)
	case messageDefinition(MessageDefinition)
	case messageHeader(MessageHeader)
	case molecularSequence(MolecularSequence)
	case namingSystem(NamingSystem)
	case nutritionOrder(NutritionOrder)
	case observation(Observation)
	case observationDefinition(ObservationDefinition)
	case operationDefinition(OperationDefinition)
	case operationOutcome(OperationOutcome)
	case organization(Organization)
	case organizationAffiliation(OrganizationAffiliation)
	case parameters(Parameters)
	case patient(Patient)
	case paymentNotice(PaymentNotice)
	case paymentReconciliation(PaymentReconciliation)
	case person(Person)
	case planDefinition(PlanDefinition)
	case practitioner(Practitioner)
	case practitionerRole(PractitionerRole)
	case procedure(Procedure)
	case provenance(Provenance)
	case questionnaire(Questionnaire)
	case questionnaireResponse(QuestionnaireResponse)
	case relatedPerson(RelatedPerson)
	case requestGroup(RequestGroup)
	case researchDefinition(ResearchDefinition)
	case researchElementDefinition(ResearchElementDefinition)
	case researchStudy(ResearchStudy)
	case researchSubject(ResearchSubject)
	case resource(Resource)
	case riskAssessment(RiskAssessment)
	case riskEvidenceSynthesis(RiskEvidenceSynthesis)
	case schedule(Schedule)
	case searchParameter(SearchParameter)
	case serviceRequest(ServiceRequest)
	case slot(Slot)
	case specimen(Specimen)
	case specimenDefinition(SpecimenDefinition)
	case structureDefinition(StructureDefinition)
	case structureMap(StructureMap)
	case subscription(Subscription)
	case substance(Substance)
	case substanceNucleicAcid(SubstanceNucleicAcid)
	case substancePolymer(SubstancePolymer)
	case substanceProtein(SubstanceProtein)
	case substanceReferenceInformation(SubstanceReferenceInformation)
	case substanceSourceMaterial(SubstanceSourceMaterial)
	case substanceSpecification(SubstanceSpecification)
	case supplyDelivery(SupplyDelivery)
	case supplyRequest(SupplyRequest)
	case task(Task)
	case terminologyCapabilities(TerminologyCapabilities)
	case testReport(TestReport)
	case testScript(TestScript)
	case valueSet(ValueSet)
	case verificationResult(VerificationResult)
	case visionPrescription(VisionPrescription)
	case unrecognized(Resource)
	
	public var resourceType: String {
		switch self {
		case .account:
			return "Account"
		case .activityDefinition:
			return "ActivityDefinition"
		case .adverseEvent:
			return "AdverseEvent"
		case .allergyIntolerance:
			return "AllergyIntolerance"
		case .appointment:
			return "Appointment"
		case .appointmentResponse:
			return "AppointmentResponse"
		case .auditEvent:
			return "AuditEvent"
		case .basic:
			return "Basic"
		case .binary:
			return "Binary"
		case .biologicallyDerivedProduct:
			return "BiologicallyDerivedProduct"
		case .bodyStructure:
			return "BodyStructure"
		case .bundle:
			return "Bundle"
		case .capabilityStatement:
			return "CapabilityStatement"
		case .carePlan:
			return "CarePlan"
		case .careTeam:
			return "CareTeam"
		case .catalogEntry:
			return "CatalogEntry"
		case .chargeItem:
			return "ChargeItem"
		case .chargeItemDefinition:
			return "ChargeItemDefinition"
		case .claim:
			return "Claim"
		case .claimResponse:
			return "ClaimResponse"
		case .clinicalImpression:
			return "ClinicalImpression"
		case .codeSystem:
			return "CodeSystem"
		case .communication:
			return "Communication"
		case .communicationRequest:
			return "CommunicationRequest"
		case .compartmentDefinition:
			return "CompartmentDefinition"
		case .composition:
			return "Composition"
		case .conceptMap:
			return "ConceptMap"
		case .condition:
			return "Condition"
		case .consent:
			return "Consent"
		case .contract:
			return "Contract"
		case .coverage:
			return "Coverage"
		case .coverageEligibilityRequest:
			return "CoverageEligibilityRequest"
		case .coverageEligibilityResponse:
			return "CoverageEligibilityResponse"
		case .detectedIssue:
			return "DetectedIssue"
		case .device:
			return "Device"
		case .deviceDefinition:
			return "DeviceDefinition"
		case .deviceMetric:
			return "DeviceMetric"
		case .deviceRequest:
			return "DeviceRequest"
		case .deviceUseStatement:
			return "DeviceUseStatement"
		case .diagnosticReport:
			return "DiagnosticReport"
		case .documentManifest:
			return "DocumentManifest"
		case .documentReference:
			return "DocumentReference"
		case .domainResource:
			return "DomainResource"
		case .effectEvidenceSynthesis:
			return "EffectEvidenceSynthesis"
		case .encounter:
			return "Encounter"
		case .endpoint:
			return "Endpoint"
		case .enrollmentRequest:
			return "EnrollmentRequest"
		case .enrollmentResponse:
			return "EnrollmentResponse"
		case .episodeOfCare:
			return "EpisodeOfCare"
		case .eventDefinition:
			return "EventDefinition"
		case .evidence:
			return "Evidence"
		case .evidenceVariable:
			return "EvidenceVariable"
		case .exampleScenario:
			return "ExampleScenario"
		case .explanationOfBenefit:
			return "ExplanationOfBenefit"
		case .familyMemberHistory:
			return "FamilyMemberHistory"
		case .flag:
			return "Flag"
		case .goal:
			return "Goal"
		case .graphDefinition:
			return "GraphDefinition"
		case .group:
			return "Group"
		case .guidanceResponse:
			return "GuidanceResponse"
		case .healthcareService:
			return "HealthcareService"
		case .imagingStudy:
			return "ImagingStudy"
		case .immunization:
			return "Immunization"
		case .immunizationEvaluation:
			return "ImmunizationEvaluation"
		case .immunizationRecommendation:
			return "ImmunizationRecommendation"
		case .implementationGuide:
			return "ImplementationGuide"
		case .insurancePlan:
			return "InsurancePlan"
		case .invoice:
			return "Invoice"
		case .library:
			return "Library"
		case .linkage:
			return "Linkage"
		case .list:
			return "List"
		case .location:
			return "Location"
		case .measure:
			return "Measure"
		case .measureReport:
			return "MeasureReport"
		case .media:
			return "Media"
		case .medication:
			return "Medication"
		case .medicationAdministration:
			return "MedicationAdministration"
		case .medicationDispense:
			return "MedicationDispense"
		case .medicationKnowledge:
			return "MedicationKnowledge"
		case .medicationRequest:
			return "MedicationRequest"
		case .medicationStatement:
			return "MedicationStatement"
		case .medicinalProduct:
			return "MedicinalProduct"
		case .medicinalProductAuthorization:
			return "MedicinalProductAuthorization"
		case .medicinalProductContraindication:
			return "MedicinalProductContraindication"
		case .medicinalProductIndication:
			return "MedicinalProductIndication"
		case .medicinalProductIngredient:
			return "MedicinalProductIngredient"
		case .medicinalProductInteraction:
			return "MedicinalProductInteraction"
		case .medicinalProductManufactured:
			return "MedicinalProductManufactured"
		case .medicinalProductPackaged:
			return "MedicinalProductPackaged"
		case .medicinalProductPharmaceutical:
			return "MedicinalProductPharmaceutical"
		case .medicinalProductUndesirableEffect:
			return "MedicinalProductUndesirableEffect"
		case .messageDefinition:
			return "MessageDefinition"
		case .messageHeader:
			return "MessageHeader"
		case .molecularSequence:
			return "MolecularSequence"
		case .namingSystem:
			return "NamingSystem"
		case .nutritionOrder:
			return "NutritionOrder"
		case .observation:
			return "Observation"
		case .observationDefinition:
			return "ObservationDefinition"
		case .operationDefinition:
			return "OperationDefinition"
		case .operationOutcome:
			return "OperationOutcome"
		case .organization:
			return "Organization"
		case .organizationAffiliation:
			return "OrganizationAffiliation"
		case .parameters:
			return "Parameters"
		case .patient:
			return "Patient"
		case .paymentNotice:
			return "PaymentNotice"
		case .paymentReconciliation:
			return "PaymentReconciliation"
		case .person:
			return "Person"
		case .planDefinition:
			return "PlanDefinition"
		case .practitioner:
			return "Practitioner"
		case .practitionerRole:
			return "PractitionerRole"
		case .procedure:
			return "Procedure"
		case .provenance:
			return "Provenance"
		case .questionnaire:
			return "Questionnaire"
		case .questionnaireResponse:
			return "QuestionnaireResponse"
		case .relatedPerson:
			return "RelatedPerson"
		case .requestGroup:
			return "RequestGroup"
		case .researchDefinition:
			return "ResearchDefinition"
		case .researchElementDefinition:
			return "ResearchElementDefinition"
		case .researchStudy:
			return "ResearchStudy"
		case .researchSubject:
			return "ResearchSubject"
		case .resource:
			return "Resource"
		case .riskAssessment:
			return "RiskAssessment"
		case .riskEvidenceSynthesis:
			return "RiskEvidenceSynthesis"
		case .schedule:
			return "Schedule"
		case .searchParameter:
			return "SearchParameter"
		case .serviceRequest:
			return "ServiceRequest"
		case .slot:
			return "Slot"
		case .specimen:
			return "Specimen"
		case .specimenDefinition:
			return "SpecimenDefinition"
		case .structureDefinition:
			return "StructureDefinition"
		case .structureMap:
			return "StructureMap"
		case .subscription:
			return "Subscription"
		case .substance:
			return "Substance"
		case .substanceNucleicAcid:
			return "SubstanceNucleicAcid"
		case .substancePolymer:
			return "SubstancePolymer"
		case .substanceProtein:
			return "SubstanceProtein"
		case .substanceReferenceInformation:
			return "SubstanceReferenceInformation"
		case .substanceSourceMaterial:
			return "SubstanceSourceMaterial"
		case .substanceSpecification:
			return "SubstanceSpecification"
		case .supplyDelivery:
			return "SupplyDelivery"
		case .supplyRequest:
			return "SupplyRequest"
		case .task:
			return "Task"
		case .terminologyCapabilities:
			return "TerminologyCapabilities"
		case .testReport:
			return "TestReport"
		case .testScript:
			return "TestScript"
		case .valueSet:
			return "ValueSet"
		case .verificationResult:
			return "VerificationResult"
		case .visionPrescription:
			return "VisionPrescription"
		case .unrecognized:
			return "Resource"
		}
	}
	
	// MARK: -
	
	public init(with resource: Resource) {
		switch type(of: resource).resourceType {
		case .account:
			self = .account(resource as! Account)
		case .activityDefinition:
			self = .activityDefinition(resource as! ActivityDefinition)
		case .adverseEvent:
			self = .adverseEvent(resource as! AdverseEvent)
		case .allergyIntolerance:
			self = .allergyIntolerance(resource as! AllergyIntolerance)
		case .appointment:
			self = .appointment(resource as! Appointment)
		case .appointmentResponse:
			self = .appointmentResponse(resource as! AppointmentResponse)
		case .auditEvent:
			self = .auditEvent(resource as! AuditEvent)
		case .basic:
			self = .basic(resource as! Basic)
		case .binary:
			self = .binary(resource as! Binary)
		case .biologicallyDerivedProduct:
			self = .biologicallyDerivedProduct(resource as! BiologicallyDerivedProduct)
		case .bodyStructure:
			self = .bodyStructure(resource as! BodyStructure)
		case .bundle:
			self = .bundle(resource as! Bundle)
		case .capabilityStatement:
			self = .capabilityStatement(resource as! CapabilityStatement)
		case .carePlan:
			self = .carePlan(resource as! CarePlan)
		case .careTeam:
			self = .careTeam(resource as! CareTeam)
		case .catalogEntry:
			self = .catalogEntry(resource as! CatalogEntry)
		case .chargeItem:
			self = .chargeItem(resource as! ChargeItem)
		case .chargeItemDefinition:
			self = .chargeItemDefinition(resource as! ChargeItemDefinition)
		case .claim:
			self = .claim(resource as! Claim)
		case .claimResponse:
			self = .claimResponse(resource as! ClaimResponse)
		case .clinicalImpression:
			self = .clinicalImpression(resource as! ClinicalImpression)
		case .codeSystem:
			self = .codeSystem(resource as! CodeSystem)
		case .communication:
			self = .communication(resource as! Communication)
		case .communicationRequest:
			self = .communicationRequest(resource as! CommunicationRequest)
		case .compartmentDefinition:
			self = .compartmentDefinition(resource as! CompartmentDefinition)
		case .composition:
			self = .composition(resource as! Composition)
		case .conceptMap:
			self = .conceptMap(resource as! ConceptMap)
		case .condition:
			self = .condition(resource as! Condition)
		case .consent:
			self = .consent(resource as! Consent)
		case .contract:
			self = .contract(resource as! Contract)
		case .coverage:
			self = .coverage(resource as! Coverage)
		case .coverageEligibilityRequest:
			self = .coverageEligibilityRequest(resource as! CoverageEligibilityRequest)
		case .coverageEligibilityResponse:
			self = .coverageEligibilityResponse(resource as! CoverageEligibilityResponse)
		case .detectedIssue:
			self = .detectedIssue(resource as! DetectedIssue)
		case .device:
			self = .device(resource as! Device)
		case .deviceDefinition:
			self = .deviceDefinition(resource as! DeviceDefinition)
		case .deviceMetric:
			self = .deviceMetric(resource as! DeviceMetric)
		case .deviceRequest:
			self = .deviceRequest(resource as! DeviceRequest)
		case .deviceUseStatement:
			self = .deviceUseStatement(resource as! DeviceUseStatement)
		case .diagnosticReport:
			self = .diagnosticReport(resource as! DiagnosticReport)
		case .documentManifest:
			self = .documentManifest(resource as! DocumentManifest)
		case .documentReference:
			self = .documentReference(resource as! DocumentReference)
		case .domainResource:
			self = .domainResource(resource as! DomainResource)
		case .effectEvidenceSynthesis:
			self = .effectEvidenceSynthesis(resource as! EffectEvidenceSynthesis)
		case .encounter:
			self = .encounter(resource as! Encounter)
		case .endpoint:
			self = .endpoint(resource as! Endpoint)
		case .enrollmentRequest:
			self = .enrollmentRequest(resource as! EnrollmentRequest)
		case .enrollmentResponse:
			self = .enrollmentResponse(resource as! EnrollmentResponse)
		case .episodeOfCare:
			self = .episodeOfCare(resource as! EpisodeOfCare)
		case .eventDefinition:
			self = .eventDefinition(resource as! EventDefinition)
		case .evidence:
			self = .evidence(resource as! Evidence)
		case .evidenceVariable:
			self = .evidenceVariable(resource as! EvidenceVariable)
		case .exampleScenario:
			self = .exampleScenario(resource as! ExampleScenario)
		case .explanationOfBenefit:
			self = .explanationOfBenefit(resource as! ExplanationOfBenefit)
		case .familyMemberHistory:
			self = .familyMemberHistory(resource as! FamilyMemberHistory)
		case .flag:
			self = .flag(resource as! Flag)
		case .goal:
			self = .goal(resource as! Goal)
		case .graphDefinition:
			self = .graphDefinition(resource as! GraphDefinition)
		case .group:
			self = .group(resource as! Group)
		case .guidanceResponse:
			self = .guidanceResponse(resource as! GuidanceResponse)
		case .healthcareService:
			self = .healthcareService(resource as! HealthcareService)
		case .imagingStudy:
			self = .imagingStudy(resource as! ImagingStudy)
		case .immunization:
			self = .immunization(resource as! Immunization)
		case .immunizationEvaluation:
			self = .immunizationEvaluation(resource as! ImmunizationEvaluation)
		case .immunizationRecommendation:
			self = .immunizationRecommendation(resource as! ImmunizationRecommendation)
		case .implementationGuide:
			self = .implementationGuide(resource as! ImplementationGuide)
		case .insurancePlan:
			self = .insurancePlan(resource as! InsurancePlan)
		case .invoice:
			self = .invoice(resource as! Invoice)
		case .library:
			self = .library(resource as! Library)
		case .linkage:
			self = .linkage(resource as! Linkage)
		case .list:
			self = .list(resource as! List)
		case .location:
			self = .location(resource as! Location)
		case .measure:
			self = .measure(resource as! Measure)
		case .measureReport:
			self = .measureReport(resource as! MeasureReport)
		case .media:
			self = .media(resource as! Media)
		case .medication:
			self = .medication(resource as! Medication)
		case .medicationAdministration:
			self = .medicationAdministration(resource as! MedicationAdministration)
		case .medicationDispense:
			self = .medicationDispense(resource as! MedicationDispense)
		case .medicationKnowledge:
			self = .medicationKnowledge(resource as! MedicationKnowledge)
		case .medicationRequest:
			self = .medicationRequest(resource as! MedicationRequest)
		case .medicationStatement:
			self = .medicationStatement(resource as! MedicationStatement)
		case .medicinalProduct:
			self = .medicinalProduct(resource as! MedicinalProduct)
		case .medicinalProductAuthorization:
			self = .medicinalProductAuthorization(resource as! MedicinalProductAuthorization)
		case .medicinalProductContraindication:
			self = .medicinalProductContraindication(resource as! MedicinalProductContraindication)
		case .medicinalProductIndication:
			self = .medicinalProductIndication(resource as! MedicinalProductIndication)
		case .medicinalProductIngredient:
			self = .medicinalProductIngredient(resource as! MedicinalProductIngredient)
		case .medicinalProductInteraction:
			self = .medicinalProductInteraction(resource as! MedicinalProductInteraction)
		case .medicinalProductManufactured:
			self = .medicinalProductManufactured(resource as! MedicinalProductManufactured)
		case .medicinalProductPackaged:
			self = .medicinalProductPackaged(resource as! MedicinalProductPackaged)
		case .medicinalProductPharmaceutical:
			self = .medicinalProductPharmaceutical(resource as! MedicinalProductPharmaceutical)
		case .medicinalProductUndesirableEffect:
			self = .medicinalProductUndesirableEffect(resource as! MedicinalProductUndesirableEffect)
		case .messageDefinition:
			self = .messageDefinition(resource as! MessageDefinition)
		case .messageHeader:
			self = .messageHeader(resource as! MessageHeader)
		case .molecularSequence:
			self = .molecularSequence(resource as! MolecularSequence)
		case .namingSystem:
			self = .namingSystem(resource as! NamingSystem)
		case .nutritionOrder:
			self = .nutritionOrder(resource as! NutritionOrder)
		case .observation:
			self = .observation(resource as! Observation)
		case .observationDefinition:
			self = .observationDefinition(resource as! ObservationDefinition)
		case .operationDefinition:
			self = .operationDefinition(resource as! OperationDefinition)
		case .operationOutcome:
			self = .operationOutcome(resource as! OperationOutcome)
		case .organization:
			self = .organization(resource as! Organization)
		case .organizationAffiliation:
			self = .organizationAffiliation(resource as! OrganizationAffiliation)
		case .parameters:
			self = .parameters(resource as! Parameters)
		case .patient:
			self = .patient(resource as! Patient)
		case .paymentNotice:
			self = .paymentNotice(resource as! PaymentNotice)
		case .paymentReconciliation:
			self = .paymentReconciliation(resource as! PaymentReconciliation)
		case .person:
			self = .person(resource as! Person)
		case .planDefinition:
			self = .planDefinition(resource as! PlanDefinition)
		case .practitioner:
			self = .practitioner(resource as! Practitioner)
		case .practitionerRole:
			self = .practitionerRole(resource as! PractitionerRole)
		case .procedure:
			self = .procedure(resource as! Procedure)
		case .provenance:
			self = .provenance(resource as! Provenance)
		case .questionnaire:
			self = .questionnaire(resource as! Questionnaire)
		case .questionnaireResponse:
			self = .questionnaireResponse(resource as! QuestionnaireResponse)
		case .relatedPerson:
			self = .relatedPerson(resource as! RelatedPerson)
		case .requestGroup:
			self = .requestGroup(resource as! RequestGroup)
		case .researchDefinition:
			self = .researchDefinition(resource as! ResearchDefinition)
		case .researchElementDefinition:
			self = .researchElementDefinition(resource as! ResearchElementDefinition)
		case .researchStudy:
			self = .researchStudy(resource as! ResearchStudy)
		case .researchSubject:
			self = .researchSubject(resource as! ResearchSubject)
		case .resource:
			self = .resource(resource)
		case .riskAssessment:
			self = .riskAssessment(resource as! RiskAssessment)
		case .riskEvidenceSynthesis:
			self = .riskEvidenceSynthesis(resource as! RiskEvidenceSynthesis)
		case .schedule:
			self = .schedule(resource as! Schedule)
		case .searchParameter:
			self = .searchParameter(resource as! SearchParameter)
		case .serviceRequest:
			self = .serviceRequest(resource as! ServiceRequest)
		case .slot:
			self = .slot(resource as! Slot)
		case .specimen:
			self = .specimen(resource as! Specimen)
		case .specimenDefinition:
			self = .specimenDefinition(resource as! SpecimenDefinition)
		case .structureDefinition:
			self = .structureDefinition(resource as! StructureDefinition)
		case .structureMap:
			self = .structureMap(resource as! StructureMap)
		case .subscription:
			self = .subscription(resource as! Subscription)
		case .substance:
			self = .substance(resource as! Substance)
		case .substanceNucleicAcid:
			self = .substanceNucleicAcid(resource as! SubstanceNucleicAcid)
		case .substancePolymer:
			self = .substancePolymer(resource as! SubstancePolymer)
		case .substanceProtein:
			self = .substanceProtein(resource as! SubstanceProtein)
		case .substanceReferenceInformation:
			self = .substanceReferenceInformation(resource as! SubstanceReferenceInformation)
		case .substanceSourceMaterial:
			self = .substanceSourceMaterial(resource as! SubstanceSourceMaterial)
		case .substanceSpecification:
			self = .substanceSpecification(resource as! SubstanceSpecification)
		case .supplyDelivery:
			self = .supplyDelivery(resource as! SupplyDelivery)
		case .supplyRequest:
			self = .supplyRequest(resource as! SupplyRequest)
		case .task:
			self = .task(resource as! Task)
		case .terminologyCapabilities:
			self = .terminologyCapabilities(resource as! TerminologyCapabilities)
		case .testReport:
			self = .testReport(resource as! TestReport)
		case .testScript:
			self = .testScript(resource as! TestScript)
		case .valueSet:
			self = .valueSet(resource as! ValueSet)
		case .verificationResult:
			self = .verificationResult(resource as! VerificationResult)
		case .visionPrescription:
			self = .visionPrescription(resource as! VisionPrescription)
		}
	}
	
	public func get() -> Resource {
		switch self {
		case .account(let resource):
			return resource
		case .activityDefinition(let resource):
			return resource
		case .adverseEvent(let resource):
			return resource
		case .allergyIntolerance(let resource):
			return resource
		case .appointment(let resource):
			return resource
		case .appointmentResponse(let resource):
			return resource
		case .auditEvent(let resource):
			return resource
		case .basic(let resource):
			return resource
		case .binary(let resource):
			return resource
		case .biologicallyDerivedProduct(let resource):
			return resource
		case .bodyStructure(let resource):
			return resource
		case .bundle(let resource):
			return resource
		case .capabilityStatement(let resource):
			return resource
		case .carePlan(let resource):
			return resource
		case .careTeam(let resource):
			return resource
		case .catalogEntry(let resource):
			return resource
		case .chargeItem(let resource):
			return resource
		case .chargeItemDefinition(let resource):
			return resource
		case .claim(let resource):
			return resource
		case .claimResponse(let resource):
			return resource
		case .clinicalImpression(let resource):
			return resource
		case .codeSystem(let resource):
			return resource
		case .communication(let resource):
			return resource
		case .communicationRequest(let resource):
			return resource
		case .compartmentDefinition(let resource):
			return resource
		case .composition(let resource):
			return resource
		case .conceptMap(let resource):
			return resource
		case .condition(let resource):
			return resource
		case .consent(let resource):
			return resource
		case .contract(let resource):
			return resource
		case .coverage(let resource):
			return resource
		case .coverageEligibilityRequest(let resource):
			return resource
		case .coverageEligibilityResponse(let resource):
			return resource
		case .detectedIssue(let resource):
			return resource
		case .device(let resource):
			return resource
		case .deviceDefinition(let resource):
			return resource
		case .deviceMetric(let resource):
			return resource
		case .deviceRequest(let resource):
			return resource
		case .deviceUseStatement(let resource):
			return resource
		case .diagnosticReport(let resource):
			return resource
		case .documentManifest(let resource):
			return resource
		case .documentReference(let resource):
			return resource
		case .domainResource(let resource):
			return resource
		case .effectEvidenceSynthesis(let resource):
			return resource
		case .encounter(let resource):
			return resource
		case .endpoint(let resource):
			return resource
		case .enrollmentRequest(let resource):
			return resource
		case .enrollmentResponse(let resource):
			return resource
		case .episodeOfCare(let resource):
			return resource
		case .eventDefinition(let resource):
			return resource
		case .evidence(let resource):
			return resource
		case .evidenceVariable(let resource):
			return resource
		case .exampleScenario(let resource):
			return resource
		case .explanationOfBenefit(let resource):
			return resource
		case .familyMemberHistory(let resource):
			return resource
		case .flag(let resource):
			return resource
		case .goal(let resource):
			return resource
		case .graphDefinition(let resource):
			return resource
		case .group(let resource):
			return resource
		case .guidanceResponse(let resource):
			return resource
		case .healthcareService(let resource):
			return resource
		case .imagingStudy(let resource):
			return resource
		case .immunization(let resource):
			return resource
		case .immunizationEvaluation(let resource):
			return resource
		case .immunizationRecommendation(let resource):
			return resource
		case .implementationGuide(let resource):
			return resource
		case .insurancePlan(let resource):
			return resource
		case .invoice(let resource):
			return resource
		case .library(let resource):
			return resource
		case .linkage(let resource):
			return resource
		case .list(let resource):
			return resource
		case .location(let resource):
			return resource
		case .measure(let resource):
			return resource
		case .measureReport(let resource):
			return resource
		case .media(let resource):
			return resource
		case .medication(let resource):
			return resource
		case .medicationAdministration(let resource):
			return resource
		case .medicationDispense(let resource):
			return resource
		case .medicationKnowledge(let resource):
			return resource
		case .medicationRequest(let resource):
			return resource
		case .medicationStatement(let resource):
			return resource
		case .medicinalProduct(let resource):
			return resource
		case .medicinalProductAuthorization(let resource):
			return resource
		case .medicinalProductContraindication(let resource):
			return resource
		case .medicinalProductIndication(let resource):
			return resource
		case .medicinalProductIngredient(let resource):
			return resource
		case .medicinalProductInteraction(let resource):
			return resource
		case .medicinalProductManufactured(let resource):
			return resource
		case .medicinalProductPackaged(let resource):
			return resource
		case .medicinalProductPharmaceutical(let resource):
			return resource
		case .medicinalProductUndesirableEffect(let resource):
			return resource
		case .messageDefinition(let resource):
			return resource
		case .messageHeader(let resource):
			return resource
		case .molecularSequence(let resource):
			return resource
		case .namingSystem(let resource):
			return resource
		case .nutritionOrder(let resource):
			return resource
		case .observation(let resource):
			return resource
		case .observationDefinition(let resource):
			return resource
		case .operationDefinition(let resource):
			return resource
		case .operationOutcome(let resource):
			return resource
		case .organization(let resource):
			return resource
		case .organizationAffiliation(let resource):
			return resource
		case .parameters(let resource):
			return resource
		case .patient(let resource):
			return resource
		case .paymentNotice(let resource):
			return resource
		case .paymentReconciliation(let resource):
			return resource
		case .person(let resource):
			return resource
		case .planDefinition(let resource):
			return resource
		case .practitioner(let resource):
			return resource
		case .practitionerRole(let resource):
			return resource
		case .procedure(let resource):
			return resource
		case .provenance(let resource):
			return resource
		case .questionnaire(let resource):
			return resource
		case .questionnaireResponse(let resource):
			return resource
		case .relatedPerson(let resource):
			return resource
		case .requestGroup(let resource):
			return resource
		case .researchDefinition(let resource):
			return resource
		case .researchElementDefinition(let resource):
			return resource
		case .researchStudy(let resource):
			return resource
		case .researchSubject(let resource):
			return resource
		case .resource(let resource):
			return resource
		case .riskAssessment(let resource):
			return resource
		case .riskEvidenceSynthesis(let resource):
			return resource
		case .schedule(let resource):
			return resource
		case .searchParameter(let resource):
			return resource
		case .serviceRequest(let resource):
			return resource
		case .slot(let resource):
			return resource
		case .specimen(let resource):
			return resource
		case .specimenDefinition(let resource):
			return resource
		case .structureDefinition(let resource):
			return resource
		case .structureMap(let resource):
			return resource
		case .subscription(let resource):
			return resource
		case .substance(let resource):
			return resource
		case .substanceNucleicAcid(let resource):
			return resource
		case .substancePolymer(let resource):
			return resource
		case .substanceProtein(let resource):
			return resource
		case .substanceReferenceInformation(let resource):
			return resource
		case .substanceSourceMaterial(let resource):
			return resource
		case .substanceSpecification(let resource):
			return resource
		case .supplyDelivery(let resource):
			return resource
		case .supplyRequest(let resource):
			return resource
		case .task(let resource):
			return resource
		case .terminologyCapabilities(let resource):
			return resource
		case .testReport(let resource):
			return resource
		case .testScript(let resource):
			return resource
		case .valueSet(let resource):
			return resource
		case .verificationResult(let resource):
			return resource
		case .visionPrescription(let resource):
			return resource
		case .unrecognized(let resource):
			return resource
		}
	}
	
	public func get<T: Resource>(if type: T.Type) -> T? {
		guard let resource = get() as? T else {
			return nil
		}
		return resource
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case resourceType
	}
	
	public init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		
		switch try container.decode(String.self, forKey: .resourceType) {
		case "Account":
			self = .account(try Account(from: decoder))
		case "ActivityDefinition":
			self = .activityDefinition(try ActivityDefinition(from: decoder))
		case "AdverseEvent":
			self = .adverseEvent(try AdverseEvent(from: decoder))
		case "AllergyIntolerance":
			self = .allergyIntolerance(try AllergyIntolerance(from: decoder))
		case "Appointment":
			self = .appointment(try Appointment(from: decoder))
		case "AppointmentResponse":
			self = .appointmentResponse(try AppointmentResponse(from: decoder))
		case "AuditEvent":
			self = .auditEvent(try AuditEvent(from: decoder))
		case "Basic":
			self = .basic(try Basic(from: decoder))
		case "Binary":
			self = .binary(try Binary(from: decoder))
		case "BiologicallyDerivedProduct":
			self = .biologicallyDerivedProduct(try BiologicallyDerivedProduct(from: decoder))
		case "BodyStructure":
			self = .bodyStructure(try BodyStructure(from: decoder))
		case "Bundle":
			self = .bundle(try Bundle(from: decoder))
		case "CapabilityStatement":
			self = .capabilityStatement(try CapabilityStatement(from: decoder))
		case "CarePlan":
			self = .carePlan(try CarePlan(from: decoder))
		case "CareTeam":
			self = .careTeam(try CareTeam(from: decoder))
		case "CatalogEntry":
			self = .catalogEntry(try CatalogEntry(from: decoder))
		case "ChargeItem":
			self = .chargeItem(try ChargeItem(from: decoder))
		case "ChargeItemDefinition":
			self = .chargeItemDefinition(try ChargeItemDefinition(from: decoder))
		case "Claim":
			self = .claim(try Claim(from: decoder))
		case "ClaimResponse":
			self = .claimResponse(try ClaimResponse(from: decoder))
		case "ClinicalImpression":
			self = .clinicalImpression(try ClinicalImpression(from: decoder))
		case "CodeSystem":
			self = .codeSystem(try CodeSystem(from: decoder))
		case "Communication":
			self = .communication(try Communication(from: decoder))
		case "CommunicationRequest":
			self = .communicationRequest(try CommunicationRequest(from: decoder))
		case "CompartmentDefinition":
			self = .compartmentDefinition(try CompartmentDefinition(from: decoder))
		case "Composition":
			self = .composition(try Composition(from: decoder))
		case "ConceptMap":
			self = .conceptMap(try ConceptMap(from: decoder))
		case "Condition":
			self = .condition(try Condition(from: decoder))
		case "Consent":
			self = .consent(try Consent(from: decoder))
		case "Contract":
			self = .contract(try Contract(from: decoder))
		case "Coverage":
			self = .coverage(try Coverage(from: decoder))
		case "CoverageEligibilityRequest":
			self = .coverageEligibilityRequest(try CoverageEligibilityRequest(from: decoder))
		case "CoverageEligibilityResponse":
			self = .coverageEligibilityResponse(try CoverageEligibilityResponse(from: decoder))
		case "DetectedIssue":
			self = .detectedIssue(try DetectedIssue(from: decoder))
		case "Device":
			self = .device(try Device(from: decoder))
		case "DeviceDefinition":
			self = .deviceDefinition(try DeviceDefinition(from: decoder))
		case "DeviceMetric":
			self = .deviceMetric(try DeviceMetric(from: decoder))
		case "DeviceRequest":
			self = .deviceRequest(try DeviceRequest(from: decoder))
		case "DeviceUseStatement":
			self = .deviceUseStatement(try DeviceUseStatement(from: decoder))
		case "DiagnosticReport":
			self = .diagnosticReport(try DiagnosticReport(from: decoder))
		case "DocumentManifest":
			self = .documentManifest(try DocumentManifest(from: decoder))
		case "DocumentReference":
			self = .documentReference(try DocumentReference(from: decoder))
		case "DomainResource":
			self = .domainResource(try DomainResource(from: decoder))
		case "EffectEvidenceSynthesis":
			self = .effectEvidenceSynthesis(try EffectEvidenceSynthesis(from: decoder))
		case "Encounter":
			self = .encounter(try Encounter(from: decoder))
		case "Endpoint":
			self = .endpoint(try Endpoint(from: decoder))
		case "EnrollmentRequest":
			self = .enrollmentRequest(try EnrollmentRequest(from: decoder))
		case "EnrollmentResponse":
			self = .enrollmentResponse(try EnrollmentResponse(from: decoder))
		case "EpisodeOfCare":
			self = .episodeOfCare(try EpisodeOfCare(from: decoder))
		case "EventDefinition":
			self = .eventDefinition(try EventDefinition(from: decoder))
		case "Evidence":
			self = .evidence(try Evidence(from: decoder))
		case "EvidenceVariable":
			self = .evidenceVariable(try EvidenceVariable(from: decoder))
		case "ExampleScenario":
			self = .exampleScenario(try ExampleScenario(from: decoder))
		case "ExplanationOfBenefit":
			self = .explanationOfBenefit(try ExplanationOfBenefit(from: decoder))
		case "FamilyMemberHistory":
			self = .familyMemberHistory(try FamilyMemberHistory(from: decoder))
		case "Flag":
			self = .flag(try Flag(from: decoder))
		case "Goal":
			self = .goal(try Goal(from: decoder))
		case "GraphDefinition":
			self = .graphDefinition(try GraphDefinition(from: decoder))
		case "Group":
			self = .group(try Group(from: decoder))
		case "GuidanceResponse":
			self = .guidanceResponse(try GuidanceResponse(from: decoder))
		case "HealthcareService":
			self = .healthcareService(try HealthcareService(from: decoder))
		case "ImagingStudy":
			self = .imagingStudy(try ImagingStudy(from: decoder))
		case "Immunization":
			self = .immunization(try Immunization(from: decoder))
		case "ImmunizationEvaluation":
			self = .immunizationEvaluation(try ImmunizationEvaluation(from: decoder))
		case "ImmunizationRecommendation":
			self = .immunizationRecommendation(try ImmunizationRecommendation(from: decoder))
		case "ImplementationGuide":
			self = .implementationGuide(try ImplementationGuide(from: decoder))
		case "InsurancePlan":
			self = .insurancePlan(try InsurancePlan(from: decoder))
		case "Invoice":
			self = .invoice(try Invoice(from: decoder))
		case "Library":
			self = .library(try Library(from: decoder))
		case "Linkage":
			self = .linkage(try Linkage(from: decoder))
		case "List":
			self = .list(try List(from: decoder))
		case "Location":
			self = .location(try Location(from: decoder))
		case "Measure":
			self = .measure(try Measure(from: decoder))
		case "MeasureReport":
			self = .measureReport(try MeasureReport(from: decoder))
		case "Media":
			self = .media(try Media(from: decoder))
		case "Medication":
			self = .medication(try Medication(from: decoder))
		case "MedicationAdministration":
			self = .medicationAdministration(try MedicationAdministration(from: decoder))
		case "MedicationDispense":
			self = .medicationDispense(try MedicationDispense(from: decoder))
		case "MedicationKnowledge":
			self = .medicationKnowledge(try MedicationKnowledge(from: decoder))
		case "MedicationRequest":
			self = .medicationRequest(try MedicationRequest(from: decoder))
		case "MedicationStatement":
			self = .medicationStatement(try MedicationStatement(from: decoder))
		case "MedicinalProduct":
			self = .medicinalProduct(try MedicinalProduct(from: decoder))
		case "MedicinalProductAuthorization":
			self = .medicinalProductAuthorization(try MedicinalProductAuthorization(from: decoder))
		case "MedicinalProductContraindication":
			self = .medicinalProductContraindication(try MedicinalProductContraindication(from: decoder))
		case "MedicinalProductIndication":
			self = .medicinalProductIndication(try MedicinalProductIndication(from: decoder))
		case "MedicinalProductIngredient":
			self = .medicinalProductIngredient(try MedicinalProductIngredient(from: decoder))
		case "MedicinalProductInteraction":
			self = .medicinalProductInteraction(try MedicinalProductInteraction(from: decoder))
		case "MedicinalProductManufactured":
			self = .medicinalProductManufactured(try MedicinalProductManufactured(from: decoder))
		case "MedicinalProductPackaged":
			self = .medicinalProductPackaged(try MedicinalProductPackaged(from: decoder))
		case "MedicinalProductPharmaceutical":
			self = .medicinalProductPharmaceutical(try MedicinalProductPharmaceutical(from: decoder))
		case "MedicinalProductUndesirableEffect":
			self = .medicinalProductUndesirableEffect(try MedicinalProductUndesirableEffect(from: decoder))
		case "MessageDefinition":
			self = .messageDefinition(try MessageDefinition(from: decoder))
		case "MessageHeader":
			self = .messageHeader(try MessageHeader(from: decoder))
		case "MolecularSequence":
			self = .molecularSequence(try MolecularSequence(from: decoder))
		case "NamingSystem":
			self = .namingSystem(try NamingSystem(from: decoder))
		case "NutritionOrder":
			self = .nutritionOrder(try NutritionOrder(from: decoder))
		case "Observation":
			self = .observation(try Observation(from: decoder))
		case "ObservationDefinition":
			self = .observationDefinition(try ObservationDefinition(from: decoder))
		case "OperationDefinition":
			self = .operationDefinition(try OperationDefinition(from: decoder))
		case "OperationOutcome":
			self = .operationOutcome(try OperationOutcome(from: decoder))
		case "Organization":
			self = .organization(try Organization(from: decoder))
		case "OrganizationAffiliation":
			self = .organizationAffiliation(try OrganizationAffiliation(from: decoder))
		case "Parameters":
			self = .parameters(try Parameters(from: decoder))
		case "Patient":
			self = .patient(try Patient(from: decoder))
		case "PaymentNotice":
			self = .paymentNotice(try PaymentNotice(from: decoder))
		case "PaymentReconciliation":
			self = .paymentReconciliation(try PaymentReconciliation(from: decoder))
		case "Person":
			self = .person(try Person(from: decoder))
		case "PlanDefinition":
			self = .planDefinition(try PlanDefinition(from: decoder))
		case "Practitioner":
			self = .practitioner(try Practitioner(from: decoder))
		case "PractitionerRole":
			self = .practitionerRole(try PractitionerRole(from: decoder))
		case "Procedure":
			self = .procedure(try Procedure(from: decoder))
		case "Provenance":
			self = .provenance(try Provenance(from: decoder))
		case "Questionnaire":
			self = .questionnaire(try Questionnaire(from: decoder))
		case "QuestionnaireResponse":
			self = .questionnaireResponse(try QuestionnaireResponse(from: decoder))
		case "RelatedPerson":
			self = .relatedPerson(try RelatedPerson(from: decoder))
		case "RequestGroup":
			self = .requestGroup(try RequestGroup(from: decoder))
		case "ResearchDefinition":
			self = .researchDefinition(try ResearchDefinition(from: decoder))
		case "ResearchElementDefinition":
			self = .researchElementDefinition(try ResearchElementDefinition(from: decoder))
		case "ResearchStudy":
			self = .researchStudy(try ResearchStudy(from: decoder))
		case "ResearchSubject":
			self = .researchSubject(try ResearchSubject(from: decoder))
		case "Resource":
			self = .resource(try Resource(from: decoder))
		case "RiskAssessment":
			self = .riskAssessment(try RiskAssessment(from: decoder))
		case "RiskEvidenceSynthesis":
			self = .riskEvidenceSynthesis(try RiskEvidenceSynthesis(from: decoder))
		case "Schedule":
			self = .schedule(try Schedule(from: decoder))
		case "SearchParameter":
			self = .searchParameter(try SearchParameter(from: decoder))
		case "ServiceRequest":
			self = .serviceRequest(try ServiceRequest(from: decoder))
		case "Slot":
			self = .slot(try Slot(from: decoder))
		case "Specimen":
			self = .specimen(try Specimen(from: decoder))
		case "SpecimenDefinition":
			self = .specimenDefinition(try SpecimenDefinition(from: decoder))
		case "StructureDefinition":
			self = .structureDefinition(try StructureDefinition(from: decoder))
		case "StructureMap":
			self = .structureMap(try StructureMap(from: decoder))
		case "Subscription":
			self = .subscription(try Subscription(from: decoder))
		case "Substance":
			self = .substance(try Substance(from: decoder))
		case "SubstanceNucleicAcid":
			self = .substanceNucleicAcid(try SubstanceNucleicAcid(from: decoder))
		case "SubstancePolymer":
			self = .substancePolymer(try SubstancePolymer(from: decoder))
		case "SubstanceProtein":
			self = .substanceProtein(try SubstanceProtein(from: decoder))
		case "SubstanceReferenceInformation":
			self = .substanceReferenceInformation(try SubstanceReferenceInformation(from: decoder))
		case "SubstanceSourceMaterial":
			self = .substanceSourceMaterial(try SubstanceSourceMaterial(from: decoder))
		case "SubstanceSpecification":
			self = .substanceSpecification(try SubstanceSpecification(from: decoder))
		case "SupplyDelivery":
			self = .supplyDelivery(try SupplyDelivery(from: decoder))
		case "SupplyRequest":
			self = .supplyRequest(try SupplyRequest(from: decoder))
		case "Task":
			self = .task(try Task(from: decoder))
		case "TerminologyCapabilities":
			self = .terminologyCapabilities(try TerminologyCapabilities(from: decoder))
		case "TestReport":
			self = .testReport(try TestReport(from: decoder))
		case "TestScript":
			self = .testScript(try TestScript(from: decoder))
		case "ValueSet":
			self = .valueSet(try ValueSet(from: decoder))
		case "VerificationResult":
			self = .verificationResult(try VerificationResult(from: decoder))
		case "VisionPrescription":
			self = .visionPrescription(try VisionPrescription(from: decoder))
		default:
			self = .unrecognized(try Resource(from: decoder))
		}
	}
	
	public func encode(to encoder: Encoder) throws {
		try get().encode(to: encoder)
	}
}