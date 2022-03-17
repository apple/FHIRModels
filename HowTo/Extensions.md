# Working with Extensions

[FHIR Extensions][extensions] are an important tool to FHIR modeling, and because they are powerful they are also tricky to use.

First, make use of the `extensions(for: String)` method, which will return an array of extensions matching the given system URI.
This method will only look for extensions on the element that you call it from.

Second, because the value for extensions are often primitives, apply your knowledge of how to work with FHIR Primitives here.
Usually it's a good idea to write a Swift extension if you make use of a FHIR extension.
Here's an example:

```swift
extension FHIRPrimitive {
    
    var mothersFamilyName: String? {
        guard let mothersFamilyExtension = extensions(for: "http://hl7.org/fhir/StructureDefinition/humanname-mothers-family").first else {
            return nil
        }
        if case .string(let str) = mothersFamilyExtension.value {
            return str.value?.string
        }
        // Not a `valueString`
        return nil
    }
}
```

You could then use it this way:

```swift
import ModelsR4

let string = """
    {
        "resourceType": "Patient",
        "id": "2429563849",
        "name": [
            {
                "use": "official",
                "family": "SMITH",
                "_family": {
                    "extension": [
                        {
                            "url": "http://hl7.org/fhir/StructureDefinition/humanname-mothers-family",
                            "valueString": "JOHNSON"
                        }
                    ]
                },
                "given": [
                    "JOHN"
                ]
            }
        ]
    }
    """
guard let data = string.data(using: .utf8) else {
    throw ...
}

let decoder = JSONDecoder()
let patient = try decoder.decode(Patient.self, from: data)
for name in patient.name ?? [] {
    print("family: \(name.family?.value?.string ?? "{nil}"), mother's family: \(name.family?.mothersFamilyName ?? "{nil}")")
}
// prints: "family: SMITH, mother's family: JOHNSON"
```

[extensions]: http://hl7.org/fhir/extensibility.html
