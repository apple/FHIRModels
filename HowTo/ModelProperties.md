# Model Properties

FHIR Resource and Element types are represented as Swift classes, primitive data types are represented as structs.
All primitives are defined as `FHIRPrimitive`, genericized to the appropriate type such as `FHIRBool` or `DateTime`.

## Patient with a Name

The library makes extensive use of `ExpressibleBy{Type}Literal` so you can take shortcuts when instantiating primitives.
For example, `HumanName.given` is an Array of `FHIRPrimitive<FHIRString>` that can be instantiated as follows:

```swift
import ModelsR4

let name = HumanName(family: "Altick", given: ["Kelly"])
let patient = Patient(name: [name])

name.given?.first                   // FHIRPrimitive<FHIRString>?
name.given?.first?.value            // FHIRString?
name.given?.first?.value?.string    // String?
```

## Working with Primitives

You may be tempted to get the Swift native types from primitive values and pass these around.
To get a String from the resource ID you would do:

```swift
let id = resource.id?.value?.string
```

Instead, consider passing the element around in its full form, in this case as `FHIRPrimitive<FHIRString>`.
This means you will not lose extensions while you can still use some primitives in code as if they were native types.
With `FHIRPrimitive<FHIRString>` for example, you can actually do:

```swift
if resource.id == "101" {
    
}
```

Conversely, you can also assign many `FHIRPrimitive` types with String, Bool or numeric literals, for example:

```swift
let patient = Patient(...)
patient.id = "101"
patient.active = true
```

Lastly, many Swift native types have been extended to offer an `asFHIR{type}Primitive()` method. URL and String for example offer:

```swift
let url = URL(string: "http://apple.com")!.asFHIRURIPrimitive()
// url is a `FHIRPrimitive<FHIRURI>`
let str = "http://hl7.org/fhir".asFHIRURIPrimitive()
// str is a `FHIRPrimitive<FHIRURI>?`
```
