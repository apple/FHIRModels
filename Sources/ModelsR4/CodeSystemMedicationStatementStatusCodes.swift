//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.0.1-9346c8cc45
//  2020, Apple Inc.
//


/**
 *  Medication Status Codes
 *  
 *  URL: http://hl7.org/fhir/CodeSystem/medication-statement-status
 *  ValueSet: http://hl7.org/fhir/ValueSet/medication-statement-status
 */
public enum MedicationStatementStatusCodes: String, Codable {
	
	/// The medication is still being taken.
	case active = "active"
	
	/// The medication is no longer being taken.
	case completed = "completed"
	
	/// Some of the actions that are implied by the medication statement may have occurred.  For example, the patient
    /// may have taken some of the medication.  Clinical decision support systems should take this status into account.
	case enteredInError = "entered-in-error"
	
	/// The medication may be taken at some time in the future.
	case intended = "intended"
	
	/// Actions implied by the statement have been permanently halted, before all of them occurred. This should not be
    /// used if the statement was entered in error.
	case stopped = "stopped"
	
	/// Actions implied by the statement have been temporarily halted, but are expected to continue later. May also be
    /// called 'suspended'.
	case onHold = "on-hold"
	
	/// The state of the medication use is not currently known.
	case unknown = "unknown"
	
	/// The medication was not consumed by the patient
	case notTaken = "not-taken"
}
