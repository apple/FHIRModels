//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 3.0.1.11917
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
 One of the resource types defined as part of FHIR.
 
 URL: http://hl7.org/fhir/resource-types
 ValueSet: http://hl7.org/fhir/ValueSet/resource-types
 */
public enum ResourceType: String, FHIRPrimitiveType {
	
	/// A financial tool for tracking value accrued for a particular purpose.  In the healthcare field, used to track
	/// charges for a patient, cost centers, etc.
	case account = "Account"
	
	/// This resource allows for the definition of some activity to be performed, independent of a particular patient,
	/// practitioner, or other performance context.
	case activityDefinition = "ActivityDefinition"
	
	/// Actual or  potential/avoided event causing unintended physical injury resulting from or contributed to by
	/// medical care, a research study or other healthcare setting factors that requires additional monitoring,
	/// treatment, or hospitalization, or that results in death.
	case adverseEvent = "AdverseEvent"
	
	/// Risk of harmful or undesirable, physiological response which is unique to an individual and associated with
	/// exposure to a substance.
	case allergyIntolerance = "AllergyIntolerance"
	
	/// A booking of a healthcare event among patient(s), practitioner(s), related person(s) and/or device(s) for a
	/// specific date/time. This may result in one or more Encounter(s).
	case appointment = "Appointment"
	
	/// A reply to an appointment request for a patient and/or practitioner(s), such as a confirmation or rejection.
	case appointmentResponse = "AppointmentResponse"
	
	/// A record of an event made for purposes of maintaining a security log. Typical uses include detection of
	/// intrusion attempts and monitoring for inappropriate usage.
	case auditEvent = "AuditEvent"
	
	/// Basic is used for handling concepts not yet defined in FHIR, narrative-only resources that don't map to an
	/// existing resource, and custom resources not appropriate for inclusion in the FHIR specification.
	case basic = "Basic"
	
	/// A binary resource can contain any content, whether text, image, pdf, zip archive, etc.
	case binary = "Binary"
	
	/// Record details about the anatomical location of a specimen or body part.  This resource may be used when a coded
	/// concept does not provide the necessary detail needed for the use case.
	case bodySite = "BodySite"
	
	/// A container for a collection of resources.
	case bundle = "Bundle"
	
	/// A Capability Statement documents a set of capabilities (behaviors) of a FHIR Server that may be used as a
	/// statement of actual server functionality or a statement of required or desired server implementation.
	case capabilityStatement = "CapabilityStatement"
	
	/// Describes the intention of how one or more practitioners intend to deliver care for a particular patient, group
	/// or community for a period of time, possibly limited to care for a specific condition or set of conditions.
	case carePlan = "CarePlan"
	
	/// The Care Team includes all the people and organizations who plan to participate in the coordination and delivery
	/// of care for a patient.
	case careTeam = "CareTeam"
	
	/// The resource ChargeItem describes the provision of healthcare provider products for a certain patient, therefore
	/// referring not only to the product, but containing in addition details of the provision, like date, time, amounts
	/// and participating organizations and persons. Main Usage of the ChargeItem is to enable the billing process and
	/// internal cost allocation.
	case chargeItem = "ChargeItem"
	
	/// A provider issued list of services and products provided, or to be provided, to a patient which is provided to
	/// an insurer for payment recovery.
	case claim = "Claim"
	
	/// This resource provides the adjudication details from the processing of a Claim resource.
	case claimResponse = "ClaimResponse"
	
	/// A record of a clinical assessment performed to determine what problem(s) may affect the patient and before
	/// planning the treatments or management strategies that are best to manage a patient's condition. Assessments are
	/// often 1:1 with a clinical consultation / encounter,  but this varies greatly depending on the clinical workflow.
	/// This resource is called "ClinicalImpression" rather than "ClinicalAssessment" to avoid confusion with the
	/// recording of assessment tools such as Apgar score.
	case clinicalImpression = "ClinicalImpression"
	
	/// A code system resource specifies a set of codes drawn from one or more code systems.
	case codeSystem = "CodeSystem"
	
	/// An occurrence of information being transmitted; e.g. an alert that was sent to a responsible provider, a public
	/// health agency was notified about a reportable condition.
	case communication = "Communication"
	
	/// A request to convey information; e.g. the CDS system proposes that an alert be sent to a responsible provider,
	/// the CDS system proposes that the public health agency be notified about a reportable condition.
	case communicationRequest = "CommunicationRequest"
	
	/// A compartment definition that defines how resources are accessed on a server.
	case compartmentDefinition = "CompartmentDefinition"
	
	/// A set of healthcare-related information that is assembled together into a single logical document that provides
	/// a single coherent statement of meaning, establishes its own context and that has clinical attestation with
	/// regard to who is making the statement. While a Composition defines the structure, it does not actually contain
	/// the content: rather the full content of a document is contained in a Bundle, of which the Composition is the
	/// first resource contained.
	case composition = "Composition"
	
	/// A statement of relationships from one set of concepts to one or more other concepts - either code systems or
	/// data elements, or classes in class models.
	case conceptMap = "ConceptMap"
	
	/// A clinical condition, problem, diagnosis, or other event, situation, issue, or clinical concept that has risen
	/// to a level of concern.
	case condition = "Condition"
	
	/// A record of a healthcare consumer’s policy choices, which permits or denies identified recipient(s) or recipient
	/// role(s) to perform one or more actions within a given policy context, for specific purposes and periods of time.
	case consent = "Consent"
	
	/// A formal agreement between parties regarding the conduct of business, exchange of information or other matters.
	case contract = "Contract"
	
	/// Financial instrument which may be used to reimburse or pay for health care products and services.
	case coverage = "Coverage"
	
	/// The formal description of a single piece of information that can be gathered and reported.
	case dataElement = "DataElement"
	
	/// Indicates an actual or potential clinical issue with or between one or more active or proposed clinical actions
	/// for a patient; e.g. Drug-drug interaction, Ineffective treatment frequency, Procedure-condition conflict, etc.
	case detectedIssue = "DetectedIssue"
	
	/// This resource identifies an instance or a type of a manufactured item that is used in the provision of
	/// healthcare without being substantially changed through that activity. The device may be a medical or non-medical
	/// device.  Medical devices include durable (reusable) medical equipment, implantable devices, as well as
	/// disposable equipment used for diagnostic, treatment, and research for healthcare and public health.  Non-medical
	/// devices may include items such as a machine, cellphone, computer, application, etc.
	case device = "Device"
	
	/// The characteristics, operational status and capabilities of a medical-related component of a medical device.
	case deviceComponent = "DeviceComponent"
	
	/// Describes a measurement, calculation or setting capability of a medical device.
	case deviceMetric = "DeviceMetric"
	
	/// Represents a request for a patient to employ a medical device. The device may be an implantable device, or an
	/// external assistive device, such as a walker.
	case deviceRequest = "DeviceRequest"
	
	/// A record of a device being used by a patient where the record is the result of a report from the patient or
	/// another clinician.
	case deviceUseStatement = "DeviceUseStatement"
	
	/// The findings and interpretation of diagnostic  tests performed on patients, groups of patients, devices, and
	/// locations, and/or specimens derived from these. The report includes clinical context such as requesting and
	/// provider information, and some mix of atomic results, images, textual and coded interpretations, and formatted
	/// representation of diagnostic reports.
	case diagnosticReport = "DiagnosticReport"
	
	/// A collection of documents compiled for a purpose together with metadata that applies to the collection.
	case documentManifest = "DocumentManifest"
	
	/// A reference to a document.
	case documentReference = "DocumentReference"
	
	/// A resource that includes narrative, extensions, and contained resources.
	case domainResource = "DomainResource"
	
	/// The EligibilityRequest provides patient and insurance coverage information to an insurer for them to respond, in
	/// the form of an EligibilityResponse, with information regarding whether the stated coverage is valid and in-force
	/// and optionally to provide the insurance details of the policy.
	case eligibilityRequest = "EligibilityRequest"
	
	/// This resource provides eligibility and plan details from the processing of an Eligibility resource.
	case eligibilityResponse = "EligibilityResponse"
	
	/// An interaction between a patient and healthcare provider(s) for the purpose of providing healthcare service(s)
	/// or assessing the health status of a patient.
	case encounter = "Encounter"
	
	/// The technical details of an endpoint that can be used for electronic services, such as for web services
	/// providing XDS.b or a REST endpoint for another FHIR server. This may include any security context information.
	case endpoint = "Endpoint"
	
	/// This resource provides the insurance enrollment details to the insurer regarding a specified coverage.
	case enrollmentRequest = "EnrollmentRequest"
	
	/// This resource provides enrollment and plan details from the processing of an Enrollment resource.
	case enrollmentResponse = "EnrollmentResponse"
	
	/// An association between a patient and an organization / healthcare provider(s) during which time encounters may
	/// occur. The managing organization assumes a level of responsibility for the patient during this time.
	case episodeOfCare = "EpisodeOfCare"
	
	/// Resource to define constraints on the Expansion of a FHIR ValueSet.
	case expansionProfile = "ExpansionProfile"
	
	/// This resource provides: the claim details; adjudication details from the processing of a Claim; and optionally
	/// account balance information, for informing the subscriber of the benefits provided.
	case explanationOfBenefit = "ExplanationOfBenefit"
	
	/// Significant health events and conditions for a person related to the patient relevant in the context of care for
	/// the patient.
	case familyMemberHistory = "FamilyMemberHistory"
	
	/// Prospective warnings of potential issues when providing care to the patient.
	case flag = "Flag"
	
	/// Describes the intended objective(s) for a patient, group or organization care, for example, weight loss,
	/// restoring an activity of daily living, obtaining herd immunity via immunization, meeting a process improvement
	/// objective, etc.
	case goal = "Goal"
	
	/// A formal computable definition of a graph of resources - that is, a coherent set of resources that form a graph
	/// by following references. The Graph Definition resource defines a set and makes rules about the set.
	case graphDefinition = "GraphDefinition"
	
	/// Represents a defined collection of entities that may be discussed or acted upon collectively but which are not
	/// expected to act collectively and are not formally or legally recognized; i.e. a collection of entities that
	/// isn't an Organization.
	case group = "Group"
	
	/// A guidance response is the formal response to a guidance request, including any output parameters returned by
	/// the evaluation, as well as the description of any proposed actions to be taken.
	case guidanceResponse = "GuidanceResponse"
	
	/// The details of a healthcare service available at a location.
	case healthcareService = "HealthcareService"
	
	/// A text description of the DICOM SOP instances selected in the ImagingManifest; or the reason for, or
	/// significance of, the selection.
	case imagingManifest = "ImagingManifest"
	
	/// Representation of the content produced in a DICOM imaging study. A study comprises a set of series, each of
	/// which includes a set of Service-Object Pair Instances (SOP Instances - images or other data) acquired or
	/// produced in a common context.  A series is of only one modality (e.g. X-ray, CT, MR, ultrasound), but a study
	/// may have multiple series of different modalities.
	case imagingStudy = "ImagingStudy"
	
	/// Describes the event of a patient being administered a vaccination or a record of a vaccination as reported by a
	/// patient, a clinician or another party and may include vaccine reaction information and what vaccination protocol
	/// was followed.
	case immunization = "Immunization"
	
	/// A patient's point-in-time immunization and recommendation (i.e. forecasting a patient's immunization eligibility
	/// according to a published schedule) with optional supporting justification.
	case immunizationRecommendation = "ImmunizationRecommendation"
	
	/// A set of rules of how FHIR is used to solve a particular problem. This resource is used to gather all the parts
	/// of an implementation guide into a logical whole and to publish a computable definition of all the parts.
	case implementationGuide = "ImplementationGuide"
	
	/// The Library resource is a general-purpose container for knowledge asset definitions. It can be used to describe
	/// and expose existing knowledge assets such as logic libraries and information model descriptions, as well as to
	/// describe a collection of knowledge assets.
	case library = "Library"
	
	/// Identifies two or more records (resource instances) that are referring to the same real-world "occurrence".
	case linkage = "Linkage"
	
	/// A set of information summarized from a list of other resources.
	case list = "List"
	
	/// Details and position information for a physical place where services are provided  and resources and
	/// participants may be stored, found, contained or accommodated.
	case location = "Location"
	
	/// The Measure resource provides the definition of a quality measure.
	case measure = "Measure"
	
	/// The MeasureReport resource contains the results of evaluating a measure.
	case measureReport = "MeasureReport"
	
	/// A photo, video, or audio recording acquired or used in healthcare. The actual content may be inline or provided
	/// by direct reference.
	case media = "Media"
	
	/// This resource is primarily used for the identification and definition of a medication. It covers the ingredients
	/// and the packaging for a medication.
	case medication = "Medication"
	
	/// Describes the event of a patient consuming or otherwise being administered a medication.  This may be as simple
	/// as swallowing a tablet or it may be a long running infusion.  Related resources tie this event to the
	/// authorizing prescription, and the specific encounter between patient and health care practitioner.
	case medicationAdministration = "MedicationAdministration"
	
	/// Indicates that a medication product is to be or has been dispensed for a named person/patient.  This includes a
	/// description of the medication product (supply) provided and the instructions for administering the medication.
	/// The medication dispense is the result of a pharmacy system responding to a medication order.
	case medicationDispense = "MedicationDispense"
	
	/// An order or request for both supply of the medication and the instructions for administration of the medication
	/// to a patient. The resource is called "MedicationRequest" rather than "MedicationPrescription" or
	/// "MedicationOrder" to generalize the use across inpatient and outpatient settings, including care plans, etc.,
	/// and to harmonize with workflow patterns.
	case medicationRequest = "MedicationRequest"
	
	/// A record of a medication that is being consumed by a patient.   A MedicationStatement may indicate that the
	/// patient may be taking the medication now, or has taken the medication in the past or will be taking the
	/// medication in the future.  The source of this information can be the patient, significant other (such as a
	/// family member or spouse), or a clinician.  A common scenario where this information is captured is during the
	/// history taking process during a patient visit or stay.   The medication information may come from sources such
	/// as the patient's memory, from a prescription bottle,  or from a list of medications the patient, clinician or
	/// other party maintains
	/// 
	/// The primary difference between a medication statement and a medication administration is that the medication
	/// administration has complete administration information and is based on actual administration information from
	/// the person who administered the medication.  A medication statement is often, if not always, less specific.
	/// There is no required date/time when the medication was administered, in fact we only know that a source has
	/// reported the patient is taking this medication, where details such as time, quantity, or rate or even medication
	/// product may be incomplete or missing or less precise.  As stated earlier, the medication statement information
	/// may come from the patient's memory, from a prescription bottle or from a list of medications the patient,
	/// clinician or other party maintains.  Medication administration is more formal and is not missing detailed
	/// information.
	case medicationStatement = "MedicationStatement"
	
	/// Defines the characteristics of a message that can be shared between systems, including the type of event that
	/// initiates the message, the content to be transmitted and what response(s), if any, are permitted.
	case messageDefinition = "MessageDefinition"
	
	/// The header for a message exchange that is either requesting or responding to an action.  The reference(s) that
	/// are the subject of the action as well as other information related to the action are typically transmitted in a
	/// bundle in which the MessageHeader resource instance is the first resource in the bundle.
	case messageHeader = "MessageHeader"
	
	/// A curated namespace that issues unique symbols within that namespace for the identification of concepts, people,
	/// devices, etc.  Represents a "System" used within the Identifier and Coding data types.
	case namingSystem = "NamingSystem"
	
	/// A request to supply a diet, formula feeding (enteral) or oral nutritional supplement to a patient/resident.
	case nutritionOrder = "NutritionOrder"
	
	/// Measurements and simple assertions made about a patient, device or other subject.
	case observation = "Observation"
	
	/// A formal computable definition of an operation (on the RESTful interface) or a named query (using the search
	/// interaction).
	case operationDefinition = "OperationDefinition"
	
	/// A collection of error, warning or information messages that result from a system action.
	case operationOutcome = "OperationOutcome"
	
	/// A formally or informally recognized grouping of people or organizations formed for the purpose of achieving some
	/// form of collective action.  Includes companies, institutions, corporations, departments, community groups,
	/// healthcare practice groups, etc.
	case organization = "Organization"
	
	/// This special resource type is used to represent an operation request and response (operations.html). It has no
	/// other use, and there is no RESTful endpoint associated with it.
	case parameters = "Parameters"
	
	/// Demographics and other administrative information about an individual or animal receiving care or other health-
	/// related services.
	case patient = "Patient"
	
	/// This resource provides the status of the payment for goods and services rendered, and the request and response
	/// resource references.
	case paymentNotice = "PaymentNotice"
	
	/// This resource provides payment details and claim references supporting a bulk payment.
	case paymentReconciliation = "PaymentReconciliation"
	
	/// Demographics and administrative information about a person independent of a specific health-related context.
	case person = "Person"
	
	/// This resource allows for the definition of various types of plans as a sharable, consumable, and executable
	/// artifact. The resource is general enough to support the description of a broad range of clinical artifacts such
	/// as clinical decision support rules, order sets and protocols.
	case planDefinition = "PlanDefinition"
	
	/// A person who is directly or indirectly involved in the provisioning of healthcare.
	case practitioner = "Practitioner"
	
	/// A specific set of Roles/Locations/specialties/services that a practitioner may perform at an organization for a
	/// period of time.
	case practitionerRole = "PractitionerRole"
	
	/// An action that is or was performed on a patient. This can be a physical intervention like an operation, or less
	/// invasive like counseling or hypnotherapy.
	case procedure = "Procedure"
	
	/// A record of a request for diagnostic investigations, treatments, or operations to be performed.
	case procedureRequest = "ProcedureRequest"
	
	/// This resource provides the target, request and response, and action details for an action to be performed by the
	/// target on or about existing resources.
	case processRequest = "ProcessRequest"
	
	/// This resource provides processing status, errors and notes from the processing of a resource.
	case processResponse = "ProcessResponse"
	
	/// Provenance of a resource is a record that describes entities and processes involved in producing and delivering
	/// or otherwise influencing that resource. Provenance provides a critical foundation for assessing authenticity,
	/// enabling trust, and allowing reproducibility. Provenance assertions are a form of contextual metadata and can
	/// themselves become important records with their own provenance. Provenance statement indicates clinical
	/// significance in terms of confidence in authenticity, reliability, and trustworthiness, integrity, and stage in
	/// lifecycle (e.g. Document Completion - has the artifact been legally authenticated), all of which may impact
	/// security, privacy, and trust policies.
	case provenance = "Provenance"
	
	/// A structured set of questions intended to guide the collection of answers from end-users. Questionnaires provide
	/// detailed control over order, presentation, phraseology and grouping to allow coherent, consistent data
	/// collection.
	case questionnaire = "Questionnaire"
	
	/// A structured set of questions and their answers. The questions are ordered and grouped into coherent subsets,
	/// corresponding to the structure of the grouping of the questionnaire being responded to.
	case questionnaireResponse = "QuestionnaireResponse"
	
	/// Used to record and send details about a request for referral service or transfer of a patient to the care of
	/// another provider or provider organization.
	case referralRequest = "ReferralRequest"
	
	/// Information about a person that is involved in the care for a patient, but who is not the target of healthcare,
	/// nor has a formal responsibility in the care process.
	case relatedPerson = "RelatedPerson"
	
	/// A group of related requests that can be used to capture intended activities that have inter-dependencies such as
	/// "give this medication after that one".
	case requestGroup = "RequestGroup"
	
	/// A process where a researcher or organization plans and then executes a series of steps intended to increase the
	/// field of healthcare-related knowledge.  This includes studies of safety, efficacy, comparative effectiveness and
	/// other information about medications, devices, therapies and other interventional and investigative techniques.
	/// A ResearchStudy involves the gathering of information about human or animal subjects.
	case researchStudy = "ResearchStudy"
	
	/// A process where a researcher or organization plans and then executes a series of steps intended to increase the
	/// field of healthcare-related knowledge.  This includes studies of safety, efficacy, comparative effectiveness and
	/// other information about medications, devices, therapies and other interventional and investigative techniques.
	/// A ResearchStudy involves the gathering of information about human or animal subjects.
	case researchSubject = "ResearchSubject"
	
	/// This is the base resource type for everything.
	case resource = "Resource"
	
	/// An assessment of the likely outcome(s) for a patient or other subject as well as the likelihood of each outcome.
	case riskAssessment = "RiskAssessment"
	
	/// A container for slots of time that may be available for booking appointments.
	case schedule = "Schedule"
	
	/// A search parameter that defines a named search item that can be used to search/filter on a resource.
	case searchParameter = "SearchParameter"
	
	/// Raw data describing a biological sequence.
	case sequence = "Sequence"
	
	/// The ServiceDefinition describes a unit of decision support functionality that is made available as a service,
	/// such as immunization modules or drug-drug interaction checking.
	case serviceDefinition = "ServiceDefinition"
	
	/// A slot of time on a schedule that may be available for booking appointments.
	case slot = "Slot"
	
	/// A sample to be used for analysis.
	case specimen = "Specimen"
	
	/// A definition of a FHIR structure. This resource is used to describe the underlying resources, data types defined
	/// in FHIR, and also for describing extensions and constraints on resources and data types.
	case structureDefinition = "StructureDefinition"
	
	/// A Map of relationships between 2 structures that can be used to transform data.
	case structureMap = "StructureMap"
	
	/// The subscription resource is used to define a push based subscription from a server to another system. Once a
	/// subscription is registered with the server, the server checks every resource that is created or updated, and if
	/// the resource matches the given criteria, it sends a message on the defined "channel" so that another system is
	/// able to take an appropriate action.
	case subscription = "Subscription"
	
	/// A homogeneous material with a definite composition.
	case substance = "Substance"
	
	/// Record of delivery of what is supplied.
	case supplyDelivery = "SupplyDelivery"
	
	/// A record of a request for a medication, substance or device used in the healthcare setting.
	case supplyRequest = "SupplyRequest"
	
	/// A task to be performed.
	case task = "Task"
	
	/// A summary of information based on the results of executing a TestScript.
	case testReport = "TestReport"
	
	/// A structured set of tests against a FHIR server implementation to determine compliance against the FHIR
	/// specification.
	case testScript = "TestScript"
	
	/// A value set specifies a set of codes drawn from one or more code systems.
	case valueSet = "ValueSet"
	
	/// An authorization for the supply of glasses and/or contact lenses to a patient.
	case visionPrescription = "VisionPrescription"
}
