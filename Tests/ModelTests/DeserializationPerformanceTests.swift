//
//  DeserializationPerformanceTests.swift
//  HealthSoftware
//
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

import Foundation
import ModelsR5
import XCTest

final class DeserializationPerformanceTests: XCTestCase {
	
	func testDeserializationMemoryFootprint() {
		let decoder = JSONDecoder.fhirModelsReadyDecoder()
		measure(metrics: [XCTMemoryMetric()]) {
			for _ in 0..<1000 {
				autoreleasepool {
					_ = try? decoder.decode(Patient.self, from: Self.patientJSONData)
					_ = try? decoder.decode(Observation.self, from: Self.observationJSONData)
					_ = try? decoder.decode(ModelsR5.Bundle.self, from: Self.bundleLipidsJSONData)
				}
			}
		}
	}
	
	func testDeserializationThroughput() {
		let decoder = JSONDecoder.fhirModelsReadyDecoder()
		measure {
			for _ in 0..<1000 {
				autoreleasepool {
					_ = try? decoder.decode(Patient.self, from: Self.patientJSONData)
					_ = try? decoder.decode(Observation.self, from: Self.observationJSONData)
					_ = try? decoder.decode(ModelsR5.Bundle.self, from: Self.bundleLipidsJSONData)
				}
			}
		}
	}
	
	func testParallelDeserializationMemoryFootprint() throws {
		let patientData = Self.patientJSONData
		let observationData = Self.observationJSONData
		let bundleData = Self.bundleLipidsJSONData
		
		// Shared on purpose: a decoder is safe for concurrent decoding, and an unconfigured one
		// enforces the default depth limit.
		let decoder = JSONDecoder()
		
		_ = try decoder.decode(Patient.self, from: patientData)
		_ = try decoder.decode(Observation.self, from: observationData)
		_ = try decoder.decode(ModelsR5.Bundle.self, from: bundleData)
		
		measure(metrics: [XCTMemoryMetric()]) {
			DispatchQueue.concurrentPerform(iterations: 1000) { _ in
				try? autoreleasepool {
					XCTAssertNoThrow(try decoder.decode(Patient.self, from: patientData))
					XCTAssertNoThrow(try decoder.decode(Observation.self, from: observationData))
					XCTAssertNoThrow(try decoder.decode(ModelsR5.Bundle.self, from: bundleData))
				}
			}
		}
	}
	
	func testSerializationMemoryFootprint() throws {
		let decoder = JSONDecoder.fhirModelsReadyDecoder()
		let patient = try decoder.decode(Patient.self, from: Self.patientJSONData)
		let observation = try decoder.decode(Observation.self, from: Self.observationJSONData)
		let bundle = try decoder.decode(ModelsR5.Bundle.self, from: Self.bundleLipidsJSONData)
		let encoder = JSONEncoder()
		measure(metrics: [XCTMemoryMetric()]) {
			for _ in 0..<1000 {
				autoreleasepool {
					_ = try? encoder.encode(patient)
					_ = try? encoder.encode(observation)
					_ = try? encoder.encode(bundle)
				}
			}
		}
	}
	
	// MARK: - Fixtures
	
	private static let patientJSONData = Data(#"""
	{
	  "resourceType": "Patient",
	  "id": "example",
	  "text": {
	    "status": "generated",
	    "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Jim Chalmers</p></div>"
	  },
	  "identifier": [
	    {
	      "use": "usual",
	      "type": {
	        "coding": [
	          {
	            "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
	            "code": "MR"
	          }
	        ]
	      },
	      "system": "urn:oid:1.2.36.146.595.217.0.1",
	      "value": "12345",
	      "period": { "start": "2001-05-06" },
	      "assigner": { "display": "Acme Healthcare" }
	    }
	  ],
	  "active": true,
	  "name": [
	    { "use": "official", "family": "Chalmers", "given": ["Peter", "James"] },
	    { "use": "usual", "given": ["Jim"] },
	    { "use": "maiden", "family": "Windsor", "given": ["Peter", "James"], "period": { "end": "2002" } }
	  ],
	  "telecom": [
	    { "use": "home" },
	    { "system": "phone", "value": "(03) 5555 6473", "use": "work", "rank": 1 },
	    { "system": "phone", "value": "(03) 3410 5613", "use": "mobile", "rank": 2 },
	    { "system": "phone", "value": "(03) 5555 8834", "use": "old", "period": { "end": "2014" } }
	  ],
	  "gender": "male",
	  "birthDate": "1974-12-25",
	  "_birthDate": {
	    "extension": [
	      {
	        "url": "http://hl7.org/fhir/StructureDefinition/patient-birthTime",
	        "valueDateTime": "1974-12-25T14:35:45-05:00"
	      }
	    ]
	  },
	  "deceasedBoolean": false,
	  "address": [
	    {
	      "use": "home",
	      "type": "both",
	      "text": "534 Erewhon St PeasantVille, Rainbow, Vic 3999",
	      "line": ["534 Erewhon St"],
	      "city": "PleasantVille",
	      "district": "Rainbow",
	      "state": "Vic",
	      "postalCode": "3999",
	      "period": { "start": "1974-12-25" }
	    }
	  ],
	  "contact": [
	    {
	      "relationship": [
	        { "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/v2-0131", "code": "N" }] }
	      ],
	      "name": {
	        "family": "du Marche",
	        "given": ["Benedicte"]
	      },
	      "telecom": [{ "system": "phone", "value": "+33 (237) 998327" }],
	      "address": {
	        "use": "home",
	        "type": "both",
	        "line": ["534 Erewhon St"],
	        "city": "PleasantVille",
	        "district": "Rainbow",
	        "state": "Vic",
	        "postalCode": "3999",
	        "period": { "start": "1974-12-25" }
	      },
	      "gender": "female",
	      "period": { "start": "2012" }
	    }
	  ],
	  "managingOrganization": { "reference": "Organization/1" },
	  "meta": {
	    "tag": [
	      {
	        "system": "http://terminology.hl7.org/CodeSystem/v3-ActReason",
	        "code": "HTEST",
	        "display": "test health data"
	      }
	    ]
	  }
	}
	"""#.utf8)
	
	private static let observationJSONData = Data(#"""
	{
	  "resourceType": "Observation",
	  "id": "example",
	  "text": {
	    "status": "generated",
	    "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Body Weight observation</p></div>"
	  },
	  "status": "final",
	  "category": [
	    {
	      "coding": [
	        {
	          "system": "http://terminology.hl7.org/CodeSystem/observation-category",
	          "code": "vital-signs",
	          "display": "Vital Signs"
	        }
	      ]
	    }
	  ],
	  "code": {
	    "coding": [
	      { "system": "http://loinc.org", "code": "29463-7", "display": "Body Weight" },
	      { "system": "http://loinc.org", "code": "3141-9", "display": "Body weight Measured" },
	      { "system": "http://snomed.info/sct", "code": "27113001", "display": "Body weight" },
	      { "system": "http://acme.org/devices/clinical-codes", "code": "body-weight", "display": "Body Weight" }
	    ]
	  },
	  "subject": { "reference": "Patient/example" },
	  "encounter": { "reference": "Encounter/example" },
	  "effectiveDateTime": "2016-03-28",
	  "valueQuantity": {
	    "value": 185,
	    "unit": "lbs",
	    "system": "http://unitsofmeasure.org",
	    "code": "[lb_av]"
	  },
	  "meta": {
	    "tag": [
	      {
	        "system": "http://terminology.hl7.org/CodeSystem/v3-ActReason",
	        "code": "HTEST",
	        "display": "test health data"
	      }
	    ]
	  }
	}
	"""#.utf8)
	
	private static let bundleLipidsJSONData = Data(#"""
	{
	  "resourceType": "Bundle",
	  "id": "lipids",
	  "type": "collection",
	  "entry": [
	    {
	      "fullUrl": "https://example.com/base/DiagnosticReport/lipids",
	      "resource": {
	        "resourceType": "DiagnosticReport",
	        "id": "lipids",
	        "text": {
	          "status": "generated",
	          "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Lipid Report</p></div>"
	        },
	        "identifier": [{ "system": "http://acme.com/lab/reports", "value": "5234342" }],
	        "status": "final",
	        "category": [
	          { "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/v2-0074", "code": "HM" }] }
	        ],
	        "code": {
	          "coding": [
	            {
	              "system": "http://loinc.org",
	              "code": "57698-3",
	              "display": "Lipid panel with direct LDL - Serum or Plasma"
	            }
	          ],
	          "text": "Lipid Panel"
	        },
	        "subject": { "reference": "Patient/pat2" },
	        "effectiveDateTime": "2011-03-04T08:30:00+11:00",
	        "issued": "2013-01-27T11:45:33+11:00",
	        "performer": [
	          {
	            "reference": "Organization/1832473e-2fe0-452d-abe9-3cdb9879522f",
	            "display": "Acme Laboratory, Inc"
	          }
	        ],
	        "result": [
	          { "id": "1", "reference": "Observation/cholesterol" },
	          { "id": "2", "reference": "Observation/triglyceride" },
	          { "id": "3", "reference": "Observation/hdlcholesterol" },
	          { "id": "4", "reference": "Observation/ldlcholesterol" }
	        ]
	      }
	    },
	    {
	      "fullUrl": "https://example.com/base/Observation/cholesterol",
	      "resource": {
	        "resourceType": "Observation",
	        "id": "cholesterol",
	        "text": {
	          "status": "generated",
	          "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Cholesterol</p></div>"
	        },
	        "status": "final",
	        "code": {
	          "coding": [
	            {
	              "system": "http://loinc.org",
	              "code": "35200-5",
	              "display": "Cholesterol [Moles/volume] in Serum or Plasma"
	            }
	          ],
	          "text": "Cholesterol"
	        },
	        "subject": { "reference": "Patient/pat2" },
	        "performer": [
	          {
	            "reference": "Organization/1832473e-2fe0-452d-abe9-3cdb9879522f",
	            "display": "Acme Laboratory, Inc"
	          }
	        ],
	        "valueQuantity": {
	          "value": 6.3,
	          "unit": "mmol/L",
	          "system": "http://unitsofmeasure.org",
	          "code": "mmol/L"
	        },
	        "referenceRange": [
	          { "high": { "value": 4.5, "unit": "mmol/L", "system": "http://unitsofmeasure.org", "code": "mmol/L" } }
	        ]
	      }
	    },
	    {
	      "fullUrl": "https://example.com/base/Observation/triglyceride",
	      "resource": {
	        "resourceType": "Observation",
	        "id": "triglyceride",
	        "text": {
	          "status": "generated",
	          "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Triglyceride</p></div>"
	        },
	        "status": "final",
	        "code": {
	          "coding": [
	            {
	              "system": "http://loinc.org",
	              "code": "35217-9",
	              "display": "Triglyceride [Moles/volume] in Serum or Plasma"
	            }
	          ],
	          "text": "Triglyceride"
	        },
	        "subject": { "reference": "Patient/pat2" },
	        "performer": [
	          {
	            "reference": "Organization/1832473e-2fe0-452d-abe9-3cdb9879522f",
	            "display": "Acme Laboratory, Inc"
	          }
	        ],
	        "valueQuantity": {
	          "value": 1.3,
	          "unit": "mmol/L",
	          "system": "http://unitsofmeasure.org",
	          "code": "mmol/L"
	        },
	        "referenceRange": [
	          { "high": { "value": 2.0, "unit": "mmol/L", "system": "http://unitsofmeasure.org", "code": "mmol/L" } }
	        ]
	      }
	    },
	    {
	      "fullUrl": "https://example.com/base/Observation/hdlcholesterol",
	      "resource": {
	        "resourceType": "Observation",
	        "id": "hdlcholesterol",
	        "text": {
	          "status": "generated",
	          "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>HDL Cholesterol</p></div>"
	        },
	        "status": "final",
	        "code": {
	          "coding": [
	            { "system": "http://loinc.org", "code": "2085-9", "display": "HDL Cholesterol" }
	          ],
	          "text": "Cholesterol in HDL"
	        },
	        "subject": { "reference": "Patient/pat2" },
	        "performer": [
	          {
	            "reference": "Organization/1832473e-2fe0-452d-abe9-3cdb9879522f",
	            "display": "Acme Laboratory, Inc"
	          }
	        ],
	        "valueQuantity": {
	          "value": 1.3,
	          "unit": "mmol/L",
	          "system": "http://unitsofmeasure.org",
	          "code": "mmol/L"
	        },
	        "referenceRange": [
	          { "low": { "value": 1.5, "unit": "mmol/L", "system": "http://unitsofmeasure.org", "code": "mmol/L" } }
	        ]
	      }
	    },
	    {
	      "fullUrl": "https://example.com/base/Observation/ldlcholesterol",
	      "resource": {
	        "resourceType": "Observation",
	        "id": "ldlcholesterol",
	        "text": {
	          "status": "generated",
	          "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>LDL Cholesterol</p></div>"
	        },
	        "status": "final",
	        "code": {
	          "coding": [
	            {
	              "system": "http://loinc.org",
	              "code": "13457-7",
	              "display": "Cholesterol in LDL [Mass/volume] in Serum or Plasma by calculation"
	            }
	          ],
	          "text": "LDL Chol. (Calc)"
	        },
	        "subject": { "reference": "Patient/pat2" },
	        "performer": [
	          {
	            "reference": "Organization/1832473e-2fe0-452d-abe9-3cdb9879522f",
	            "display": "Acme Laboratory, Inc"
	          }
	        ],
	        "valueQuantity": {
	          "value": 4.6,
	          "unit": "mmol/L",
	          "system": "http://unitsofmeasure.org",
	          "code": "mmol/L"
	        },
	        "referenceRange": [
	          { "high": { "value": 3.0, "unit": "mmol/L", "system": "http://unitsofmeasure.org", "code": "mmol/L" } }
	        ]
	      }
	    }
	  ],
	  "meta": {
	    "tag": [
	      {
	        "system": "http://terminology.hl7.org/CodeSystem/v3-ActReason",
	        "code": "HTEST",
	        "display": "test health data"
	      }
	    ]
	  }
	}
	"""#.utf8)
}
