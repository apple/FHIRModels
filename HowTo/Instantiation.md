# Instantiating FHIR Models

Assuming you have data that you know represents a FHIR resource, you have two options of instantiating a model and an easy option to get typed resources from a `Bundle`. We'll assume you have JSON data for the examples below.

## 1. Use ResourceProxy

The `ResourceProxy` type inspects the `resourceType` in the data and instantiates the appropriate class for you:

```swift
import ModelsR4

let data = <FHIR JSON data>
let decoder = JSONDecoder()
do {
    let proxy = try decoder.decode(ResourceProxy.self, from: data)
    
    let resource = proxy.get()
    // `resource` is a generic `Resource`
    
    let patient = proxy.get(if: Patient.self)
    // `patient` is a nullable `Patient`
    
    if case .patient(let patient) = proxy {
        // `patient` is a `Patient`
    }
    
    switch proxy {
    case .patient(let patient):
        // `patient` is a `Patient`
        break
    default:
        break
    }
} catch {
    print("Failed to instantiate: \(error)")
}
```

## 2. Decode to known Resource

If you think you know the correct resource type already:

```swift
import ModelsR4

let data = <FHIR JSON data>
let decoder = JSONDecoder()
do {
    let resource = try decoder.decode(Patient.self, from: data)
} catch {
    print("Failed to instantiate Patient: \(error)")
}
```

## 3. Get resources from Bundle

To get certain resources from a `Bundle` you can do:

```swift
import ModelsR4

let data = <FHIR JSON data>
let bundle = try JSONDecoder().decode(ModelsR4.Bundle.self, from: data)
let observations = bundle.entry?.compactMap {
    $0.resource?.get(if: ModelsR4.Observation.self)
}
// observations is an array of `Observation` instances
```
