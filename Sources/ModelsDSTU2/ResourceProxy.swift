//
//  ResourceProxy.swift
//  HealthSoftware
//
//  Generated from FHIR 1.0.2.7202
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
	case allergyIntolerance(AllergyIntolerance)
	case appointment(Appointment)
	case appointmentResponse(AppointmentResponse)
	case auditEvent(AuditEvent)
	case basic(Basic)
	case binary(Binary)
	case bodySite(BodySite)
	case bundle(Bundle)
	case carePlan(CarePlan)
	case claim(Claim)
	case claimResponse(ClaimResponse)
	case clinicalImpression(ClinicalImpression)
	case communication(Communication)
	case communicationRequest(CommunicationRequest)
	case composition(Composition)
	case conceptMap(ConceptMap)
	case condition(Condition)
	case conformance(Conformance)
	case contract(Contract)
	case coverage(Coverage)
	case dataElement(DataElement)
	case detectedIssue(DetectedIssue)
	case device(Device)
	case deviceComponent(DeviceComponent)
	case deviceMetric(DeviceMetric)
	case deviceUseRequest(DeviceUseRequest)
	case deviceUseStatement(DeviceUseStatement)
	case diagnosticOrder(DiagnosticOrder)
	case diagnosticReport(DiagnosticReport)
	case documentManifest(DocumentManifest)
	case documentReference(DocumentReference)
	case domainResource(DomainResource)
	case eligibilityRequest(EligibilityRequest)
	case eligibilityResponse(EligibilityResponse)
	case encounter(Encounter)
	case enrollmentRequest(EnrollmentRequest)
	case enrollmentResponse(EnrollmentResponse)
	case episodeOfCare(EpisodeOfCare)
	case explanationOfBenefit(ExplanationOfBenefit)
	case familyMemberHistory(FamilyMemberHistory)
	case flag(Flag)
	case goal(Goal)
	case group(Group)
	case healthcareService(HealthcareService)
	case imagingObjectSelection(ImagingObjectSelection)
	case imagingStudy(ImagingStudy)
	case immunization(Immunization)
	case immunizationRecommendation(ImmunizationRecommendation)
	case implementationGuide(ImplementationGuide)
	case list(List)
	case location(Location)
	case media(Media)
	case medication(Medication)
	case medicationAdministration(MedicationAdministration)
	case medicationDispense(MedicationDispense)
	case medicationOrder(MedicationOrder)
	case medicationStatement(MedicationStatement)
	case messageHeader(MessageHeader)
	case namingSystem(NamingSystem)
	case nutritionOrder(NutritionOrder)
	case observation(Observation)
	case operationDefinition(OperationDefinition)
	case operationOutcome(OperationOutcome)
	case order(Order)
	case orderResponse(OrderResponse)
	case organization(Organization)
	case parameters(Parameters)
	case patient(Patient)
	case paymentNotice(PaymentNotice)
	case paymentReconciliation(PaymentReconciliation)
	case person(Person)
	case practitioner(Practitioner)
	case procedure(Procedure)
	case procedureRequest(ProcedureRequest)
	case processRequest(ProcessRequest)
	case processResponse(ProcessResponse)
	case provenance(Provenance)
	case questionnaire(Questionnaire)
	case questionnaireResponse(QuestionnaireResponse)
	case referralRequest(ReferralRequest)
	case relatedPerson(RelatedPerson)
	case resource(Resource)
	case riskAssessment(RiskAssessment)
	case schedule(Schedule)
	case searchParameter(SearchParameter)
	case slot(Slot)
	case specimen(Specimen)
	case structureDefinition(StructureDefinition)
	case subscription(Subscription)
	case substance(Substance)
	case supplyDelivery(SupplyDelivery)
	case supplyRequest(SupplyRequest)
	case testScript(TestScript)
	case valueSet(ValueSet)
	case visionPrescription(VisionPrescription)
	case unrecognized(Resource)
	
	public var resourceType: String {
		switch self {
		case .account:
			return "Account"
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
		case .bodySite:
			return "BodySite"
		case .bundle:
			return "Bundle"
		case .carePlan:
			return "CarePlan"
		case .claim:
			return "Claim"
		case .claimResponse:
			return "ClaimResponse"
		case .clinicalImpression:
			return "ClinicalImpression"
		case .communication:
			return "Communication"
		case .communicationRequest:
			return "CommunicationRequest"
		case .composition:
			return "Composition"
		case .conceptMap:
			return "ConceptMap"
		case .condition:
			return "Condition"
		case .conformance:
			return "Conformance"
		case .contract:
			return "Contract"
		case .coverage:
			return "Coverage"
		case .dataElement:
			return "DataElement"
		case .detectedIssue:
			return "DetectedIssue"
		case .device:
			return "Device"
		case .deviceComponent:
			return "DeviceComponent"
		case .deviceMetric:
			return "DeviceMetric"
		case .deviceUseRequest:
			return "DeviceUseRequest"
		case .deviceUseStatement:
			return "DeviceUseStatement"
		case .diagnosticOrder:
			return "DiagnosticOrder"
		case .diagnosticReport:
			return "DiagnosticReport"
		case .documentManifest:
			return "DocumentManifest"
		case .documentReference:
			return "DocumentReference"
		case .domainResource:
			return "DomainResource"
		case .eligibilityRequest:
			return "EligibilityRequest"
		case .eligibilityResponse:
			return "EligibilityResponse"
		case .encounter:
			return "Encounter"
		case .enrollmentRequest:
			return "EnrollmentRequest"
		case .enrollmentResponse:
			return "EnrollmentResponse"
		case .episodeOfCare:
			return "EpisodeOfCare"
		case .explanationOfBenefit:
			return "ExplanationOfBenefit"
		case .familyMemberHistory:
			return "FamilyMemberHistory"
		case .flag:
			return "Flag"
		case .goal:
			return "Goal"
		case .group:
			return "Group"
		case .healthcareService:
			return "HealthcareService"
		case .imagingObjectSelection:
			return "ImagingObjectSelection"
		case .imagingStudy:
			return "ImagingStudy"
		case .immunization:
			return "Immunization"
		case .immunizationRecommendation:
			return "ImmunizationRecommendation"
		case .implementationGuide:
			return "ImplementationGuide"
		case .list:
			return "List"
		case .location:
			return "Location"
		case .media:
			return "Media"
		case .medication:
			return "Medication"
		case .medicationAdministration:
			return "MedicationAdministration"
		case .medicationDispense:
			return "MedicationDispense"
		case .medicationOrder:
			return "MedicationOrder"
		case .medicationStatement:
			return "MedicationStatement"
		case .messageHeader:
			return "MessageHeader"
		case .namingSystem:
			return "NamingSystem"
		case .nutritionOrder:
			return "NutritionOrder"
		case .observation:
			return "Observation"
		case .operationDefinition:
			return "OperationDefinition"
		case .operationOutcome:
			return "OperationOutcome"
		case .order:
			return "Order"
		case .orderResponse:
			return "OrderResponse"
		case .organization:
			return "Organization"
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
		case .practitioner:
			return "Practitioner"
		case .procedure:
			return "Procedure"
		case .procedureRequest:
			return "ProcedureRequest"
		case .processRequest:
			return "ProcessRequest"
		case .processResponse:
			return "ProcessResponse"
		case .provenance:
			return "Provenance"
		case .questionnaire:
			return "Questionnaire"
		case .questionnaireResponse:
			return "QuestionnaireResponse"
		case .referralRequest:
			return "ReferralRequest"
		case .relatedPerson:
			return "RelatedPerson"
		case .resource:
			return "Resource"
		case .riskAssessment:
			return "RiskAssessment"
		case .schedule:
			return "Schedule"
		case .searchParameter:
			return "SearchParameter"
		case .slot:
			return "Slot"
		case .specimen:
			return "Specimen"
		case .structureDefinition:
			return "StructureDefinition"
		case .subscription:
			return "Subscription"
		case .substance:
			return "Substance"
		case .supplyDelivery:
			return "SupplyDelivery"
		case .supplyRequest:
			return "SupplyRequest"
		case .testScript:
			return "TestScript"
		case .valueSet:
			return "ValueSet"
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
		case .bodySite:
			self = .bodySite(resource as! BodySite)
		case .bundle:
			self = .bundle(resource as! Bundle)
		case .carePlan:
			self = .carePlan(resource as! CarePlan)
		case .claim:
			self = .claim(resource as! Claim)
		case .claimResponse:
			self = .claimResponse(resource as! ClaimResponse)
		case .clinicalImpression:
			self = .clinicalImpression(resource as! ClinicalImpression)
		case .communication:
			self = .communication(resource as! Communication)
		case .communicationRequest:
			self = .communicationRequest(resource as! CommunicationRequest)
		case .composition:
			self = .composition(resource as! Composition)
		case .conceptMap:
			self = .conceptMap(resource as! ConceptMap)
		case .condition:
			self = .condition(resource as! Condition)
		case .conformance:
			self = .conformance(resource as! Conformance)
		case .contract:
			self = .contract(resource as! Contract)
		case .coverage:
			self = .coverage(resource as! Coverage)
		case .dataElement:
			self = .dataElement(resource as! DataElement)
		case .detectedIssue:
			self = .detectedIssue(resource as! DetectedIssue)
		case .device:
			self = .device(resource as! Device)
		case .deviceComponent:
			self = .deviceComponent(resource as! DeviceComponent)
		case .deviceMetric:
			self = .deviceMetric(resource as! DeviceMetric)
		case .deviceUseRequest:
			self = .deviceUseRequest(resource as! DeviceUseRequest)
		case .deviceUseStatement:
			self = .deviceUseStatement(resource as! DeviceUseStatement)
		case .diagnosticOrder:
			self = .diagnosticOrder(resource as! DiagnosticOrder)
		case .diagnosticReport:
			self = .diagnosticReport(resource as! DiagnosticReport)
		case .documentManifest:
			self = .documentManifest(resource as! DocumentManifest)
		case .documentReference:
			self = .documentReference(resource as! DocumentReference)
		case .domainResource:
			self = .domainResource(resource as! DomainResource)
		case .eligibilityRequest:
			self = .eligibilityRequest(resource as! EligibilityRequest)
		case .eligibilityResponse:
			self = .eligibilityResponse(resource as! EligibilityResponse)
		case .encounter:
			self = .encounter(resource as! Encounter)
		case .enrollmentRequest:
			self = .enrollmentRequest(resource as! EnrollmentRequest)
		case .enrollmentResponse:
			self = .enrollmentResponse(resource as! EnrollmentResponse)
		case .episodeOfCare:
			self = .episodeOfCare(resource as! EpisodeOfCare)
		case .explanationOfBenefit:
			self = .explanationOfBenefit(resource as! ExplanationOfBenefit)
		case .familyMemberHistory:
			self = .familyMemberHistory(resource as! FamilyMemberHistory)
		case .flag:
			self = .flag(resource as! Flag)
		case .goal:
			self = .goal(resource as! Goal)
		case .group:
			self = .group(resource as! Group)
		case .healthcareService:
			self = .healthcareService(resource as! HealthcareService)
		case .imagingObjectSelection:
			self = .imagingObjectSelection(resource as! ImagingObjectSelection)
		case .imagingStudy:
			self = .imagingStudy(resource as! ImagingStudy)
		case .immunization:
			self = .immunization(resource as! Immunization)
		case .immunizationRecommendation:
			self = .immunizationRecommendation(resource as! ImmunizationRecommendation)
		case .implementationGuide:
			self = .implementationGuide(resource as! ImplementationGuide)
		case .list:
			self = .list(resource as! List)
		case .location:
			self = .location(resource as! Location)
		case .media:
			self = .media(resource as! Media)
		case .medication:
			self = .medication(resource as! Medication)
		case .medicationAdministration:
			self = .medicationAdministration(resource as! MedicationAdministration)
		case .medicationDispense:
			self = .medicationDispense(resource as! MedicationDispense)
		case .medicationOrder:
			self = .medicationOrder(resource as! MedicationOrder)
		case .medicationStatement:
			self = .medicationStatement(resource as! MedicationStatement)
		case .messageHeader:
			self = .messageHeader(resource as! MessageHeader)
		case .namingSystem:
			self = .namingSystem(resource as! NamingSystem)
		case .nutritionOrder:
			self = .nutritionOrder(resource as! NutritionOrder)
		case .observation:
			self = .observation(resource as! Observation)
		case .operationDefinition:
			self = .operationDefinition(resource as! OperationDefinition)
		case .operationOutcome:
			self = .operationOutcome(resource as! OperationOutcome)
		case .order:
			self = .order(resource as! Order)
		case .orderResponse:
			self = .orderResponse(resource as! OrderResponse)
		case .organization:
			self = .organization(resource as! Organization)
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
		case .practitioner:
			self = .practitioner(resource as! Practitioner)
		case .procedure:
			self = .procedure(resource as! Procedure)
		case .procedureRequest:
			self = .procedureRequest(resource as! ProcedureRequest)
		case .processRequest:
			self = .processRequest(resource as! ProcessRequest)
		case .processResponse:
			self = .processResponse(resource as! ProcessResponse)
		case .provenance:
			self = .provenance(resource as! Provenance)
		case .questionnaire:
			self = .questionnaire(resource as! Questionnaire)
		case .questionnaireResponse:
			self = .questionnaireResponse(resource as! QuestionnaireResponse)
		case .referralRequest:
			self = .referralRequest(resource as! ReferralRequest)
		case .relatedPerson:
			self = .relatedPerson(resource as! RelatedPerson)
		case .resource:
			self = .resource(resource)
		case .riskAssessment:
			self = .riskAssessment(resource as! RiskAssessment)
		case .schedule:
			self = .schedule(resource as! Schedule)
		case .searchParameter:
			self = .searchParameter(resource as! SearchParameter)
		case .slot:
			self = .slot(resource as! Slot)
		case .specimen:
			self = .specimen(resource as! Specimen)
		case .structureDefinition:
			self = .structureDefinition(resource as! StructureDefinition)
		case .subscription:
			self = .subscription(resource as! Subscription)
		case .substance:
			self = .substance(resource as! Substance)
		case .supplyDelivery:
			self = .supplyDelivery(resource as! SupplyDelivery)
		case .supplyRequest:
			self = .supplyRequest(resource as! SupplyRequest)
		case .testScript:
			self = .testScript(resource as! TestScript)
		case .valueSet:
			self = .valueSet(resource as! ValueSet)
		case .visionPrescription:
			self = .visionPrescription(resource as! VisionPrescription)
		}
	}
	
	public func get() -> Resource {
		switch self {
		case .account(let resource):
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
		case .bodySite(let resource):
			return resource
		case .bundle(let resource):
			return resource
		case .carePlan(let resource):
			return resource
		case .claim(let resource):
			return resource
		case .claimResponse(let resource):
			return resource
		case .clinicalImpression(let resource):
			return resource
		case .communication(let resource):
			return resource
		case .communicationRequest(let resource):
			return resource
		case .composition(let resource):
			return resource
		case .conceptMap(let resource):
			return resource
		case .condition(let resource):
			return resource
		case .conformance(let resource):
			return resource
		case .contract(let resource):
			return resource
		case .coverage(let resource):
			return resource
		case .dataElement(let resource):
			return resource
		case .detectedIssue(let resource):
			return resource
		case .device(let resource):
			return resource
		case .deviceComponent(let resource):
			return resource
		case .deviceMetric(let resource):
			return resource
		case .deviceUseRequest(let resource):
			return resource
		case .deviceUseStatement(let resource):
			return resource
		case .diagnosticOrder(let resource):
			return resource
		case .diagnosticReport(let resource):
			return resource
		case .documentManifest(let resource):
			return resource
		case .documentReference(let resource):
			return resource
		case .domainResource(let resource):
			return resource
		case .eligibilityRequest(let resource):
			return resource
		case .eligibilityResponse(let resource):
			return resource
		case .encounter(let resource):
			return resource
		case .enrollmentRequest(let resource):
			return resource
		case .enrollmentResponse(let resource):
			return resource
		case .episodeOfCare(let resource):
			return resource
		case .explanationOfBenefit(let resource):
			return resource
		case .familyMemberHistory(let resource):
			return resource
		case .flag(let resource):
			return resource
		case .goal(let resource):
			return resource
		case .group(let resource):
			return resource
		case .healthcareService(let resource):
			return resource
		case .imagingObjectSelection(let resource):
			return resource
		case .imagingStudy(let resource):
			return resource
		case .immunization(let resource):
			return resource
		case .immunizationRecommendation(let resource):
			return resource
		case .implementationGuide(let resource):
			return resource
		case .list(let resource):
			return resource
		case .location(let resource):
			return resource
		case .media(let resource):
			return resource
		case .medication(let resource):
			return resource
		case .medicationAdministration(let resource):
			return resource
		case .medicationDispense(let resource):
			return resource
		case .medicationOrder(let resource):
			return resource
		case .medicationStatement(let resource):
			return resource
		case .messageHeader(let resource):
			return resource
		case .namingSystem(let resource):
			return resource
		case .nutritionOrder(let resource):
			return resource
		case .observation(let resource):
			return resource
		case .operationDefinition(let resource):
			return resource
		case .operationOutcome(let resource):
			return resource
		case .order(let resource):
			return resource
		case .orderResponse(let resource):
			return resource
		case .organization(let resource):
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
		case .practitioner(let resource):
			return resource
		case .procedure(let resource):
			return resource
		case .procedureRequest(let resource):
			return resource
		case .processRequest(let resource):
			return resource
		case .processResponse(let resource):
			return resource
		case .provenance(let resource):
			return resource
		case .questionnaire(let resource):
			return resource
		case .questionnaireResponse(let resource):
			return resource
		case .referralRequest(let resource):
			return resource
		case .relatedPerson(let resource):
			return resource
		case .resource(let resource):
			return resource
		case .riskAssessment(let resource):
			return resource
		case .schedule(let resource):
			return resource
		case .searchParameter(let resource):
			return resource
		case .slot(let resource):
			return resource
		case .specimen(let resource):
			return resource
		case .structureDefinition(let resource):
			return resource
		case .subscription(let resource):
			return resource
		case .substance(let resource):
			return resource
		case .supplyDelivery(let resource):
			return resource
		case .supplyRequest(let resource):
			return resource
		case .testScript(let resource):
			return resource
		case .valueSet(let resource):
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
		case "BodySite":
			self = .bodySite(try BodySite(from: decoder))
		case "Bundle":
			self = .bundle(try Bundle(from: decoder))
		case "CarePlan":
			self = .carePlan(try CarePlan(from: decoder))
		case "Claim":
			self = .claim(try Claim(from: decoder))
		case "ClaimResponse":
			self = .claimResponse(try ClaimResponse(from: decoder))
		case "ClinicalImpression":
			self = .clinicalImpression(try ClinicalImpression(from: decoder))
		case "Communication":
			self = .communication(try Communication(from: decoder))
		case "CommunicationRequest":
			self = .communicationRequest(try CommunicationRequest(from: decoder))
		case "Composition":
			self = .composition(try Composition(from: decoder))
		case "ConceptMap":
			self = .conceptMap(try ConceptMap(from: decoder))
		case "Condition":
			self = .condition(try Condition(from: decoder))
		case "Conformance":
			self = .conformance(try Conformance(from: decoder))
		case "Contract":
			self = .contract(try Contract(from: decoder))
		case "Coverage":
			self = .coverage(try Coverage(from: decoder))
		case "DataElement":
			self = .dataElement(try DataElement(from: decoder))
		case "DetectedIssue":
			self = .detectedIssue(try DetectedIssue(from: decoder))
		case "Device":
			self = .device(try Device(from: decoder))
		case "DeviceComponent":
			self = .deviceComponent(try DeviceComponent(from: decoder))
		case "DeviceMetric":
			self = .deviceMetric(try DeviceMetric(from: decoder))
		case "DeviceUseRequest":
			self = .deviceUseRequest(try DeviceUseRequest(from: decoder))
		case "DeviceUseStatement":
			self = .deviceUseStatement(try DeviceUseStatement(from: decoder))
		case "DiagnosticOrder":
			self = .diagnosticOrder(try DiagnosticOrder(from: decoder))
		case "DiagnosticReport":
			self = .diagnosticReport(try DiagnosticReport(from: decoder))
		case "DocumentManifest":
			self = .documentManifest(try DocumentManifest(from: decoder))
		case "DocumentReference":
			self = .documentReference(try DocumentReference(from: decoder))
		case "DomainResource":
			self = .domainResource(try DomainResource(from: decoder))
		case "EligibilityRequest":
			self = .eligibilityRequest(try EligibilityRequest(from: decoder))
		case "EligibilityResponse":
			self = .eligibilityResponse(try EligibilityResponse(from: decoder))
		case "Encounter":
			self = .encounter(try Encounter(from: decoder))
		case "EnrollmentRequest":
			self = .enrollmentRequest(try EnrollmentRequest(from: decoder))
		case "EnrollmentResponse":
			self = .enrollmentResponse(try EnrollmentResponse(from: decoder))
		case "EpisodeOfCare":
			self = .episodeOfCare(try EpisodeOfCare(from: decoder))
		case "ExplanationOfBenefit":
			self = .explanationOfBenefit(try ExplanationOfBenefit(from: decoder))
		case "FamilyMemberHistory":
			self = .familyMemberHistory(try FamilyMemberHistory(from: decoder))
		case "Flag":
			self = .flag(try Flag(from: decoder))
		case "Goal":
			self = .goal(try Goal(from: decoder))
		case "Group":
			self = .group(try Group(from: decoder))
		case "HealthcareService":
			self = .healthcareService(try HealthcareService(from: decoder))
		case "ImagingObjectSelection":
			self = .imagingObjectSelection(try ImagingObjectSelection(from: decoder))
		case "ImagingStudy":
			self = .imagingStudy(try ImagingStudy(from: decoder))
		case "Immunization":
			self = .immunization(try Immunization(from: decoder))
		case "ImmunizationRecommendation":
			self = .immunizationRecommendation(try ImmunizationRecommendation(from: decoder))
		case "ImplementationGuide":
			self = .implementationGuide(try ImplementationGuide(from: decoder))
		case "List":
			self = .list(try List(from: decoder))
		case "Location":
			self = .location(try Location(from: decoder))
		case "Media":
			self = .media(try Media(from: decoder))
		case "Medication":
			self = .medication(try Medication(from: decoder))
		case "MedicationAdministration":
			self = .medicationAdministration(try MedicationAdministration(from: decoder))
		case "MedicationDispense":
			self = .medicationDispense(try MedicationDispense(from: decoder))
		case "MedicationOrder":
			self = .medicationOrder(try MedicationOrder(from: decoder))
		case "MedicationStatement":
			self = .medicationStatement(try MedicationStatement(from: decoder))
		case "MessageHeader":
			self = .messageHeader(try MessageHeader(from: decoder))
		case "NamingSystem":
			self = .namingSystem(try NamingSystem(from: decoder))
		case "NutritionOrder":
			self = .nutritionOrder(try NutritionOrder(from: decoder))
		case "Observation":
			self = .observation(try Observation(from: decoder))
		case "OperationDefinition":
			self = .operationDefinition(try OperationDefinition(from: decoder))
		case "OperationOutcome":
			self = .operationOutcome(try OperationOutcome(from: decoder))
		case "Order":
			self = .order(try Order(from: decoder))
		case "OrderResponse":
			self = .orderResponse(try OrderResponse(from: decoder))
		case "Organization":
			self = .organization(try Organization(from: decoder))
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
		case "Practitioner":
			self = .practitioner(try Practitioner(from: decoder))
		case "Procedure":
			self = .procedure(try Procedure(from: decoder))
		case "ProcedureRequest":
			self = .procedureRequest(try ProcedureRequest(from: decoder))
		case "ProcessRequest":
			self = .processRequest(try ProcessRequest(from: decoder))
		case "ProcessResponse":
			self = .processResponse(try ProcessResponse(from: decoder))
		case "Provenance":
			self = .provenance(try Provenance(from: decoder))
		case "Questionnaire":
			self = .questionnaire(try Questionnaire(from: decoder))
		case "QuestionnaireResponse":
			self = .questionnaireResponse(try QuestionnaireResponse(from: decoder))
		case "ReferralRequest":
			self = .referralRequest(try ReferralRequest(from: decoder))
		case "RelatedPerson":
			self = .relatedPerson(try RelatedPerson(from: decoder))
		case "Resource":
			self = .resource(try Resource(from: decoder))
		case "RiskAssessment":
			self = .riskAssessment(try RiskAssessment(from: decoder))
		case "Schedule":
			self = .schedule(try Schedule(from: decoder))
		case "SearchParameter":
			self = .searchParameter(try SearchParameter(from: decoder))
		case "Slot":
			self = .slot(try Slot(from: decoder))
		case "Specimen":
			self = .specimen(try Specimen(from: decoder))
		case "StructureDefinition":
			self = .structureDefinition(try StructureDefinition(from: decoder))
		case "Subscription":
			self = .subscription(try Subscription(from: decoder))
		case "Substance":
			self = .substance(try Substance(from: decoder))
		case "SupplyDelivery":
			self = .supplyDelivery(try SupplyDelivery(from: decoder))
		case "SupplyRequest":
			self = .supplyRequest(try SupplyRequest(from: decoder))
		case "TestScript":
			self = .testScript(try TestScript(from: decoder))
		case "ValueSet":
			self = .valueSet(try ValueSet(from: decoder))
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