FHIRModels
==========

[![0.4.0](https://img.shields.io/badge/Latest-0.4.0-blueviolet.svg?style=flat)](https://github.com/apple/FHIRModels/releases) [![🔥 FHIR DSTU2, STU3, R4, build](https://img.shields.io/badge/🔥_FHIR-DSTU2_•%20STU3_•%20R4_•%20β4.6-orange.svg?style=flat)][fhir] ![Works on macOS, iOS, watchOS, tvOS and Linux](https://img.shields.io/badge/Platform-macOS_•%20iOS_•%20watchOS_•%20tvOS_•%20Linux-blue.svg?style=flat) [![Swift Package Manager](https://img.shields.io/badge/SPM-compatible-brightgreen.svg?style=flat)][spm] [![License](https://img.shields.io/badge/License-APACHE_2.0-lightgrey.svg?style=flat)](LICENSE)

FHIRModels is a Swift library for [FHIR®][fhir] resource data models.

## Features

- Native Swift representation of FHIR resources, elements and data types
- Separate targets for DSTU2, STU3, R4 and latest build versions
- Enforced non-nullability of mandatory parameters
- Enums for most closed code systems
- Enums to support value[x] types
- Date/Time parsing, validation and conversion to and from NSDate
- Swift Codable support

## Requirements

FHIRModels works with Swift 5.1 and newer. Running unit tests requires Swift 5.3 and newer.

## Installation

[Swift Package Manager][spm] is the recommended way to add FHIRModels to your project:

1. In Xcode 11 and newer, go to “File” » “Swift Package Management” » “Add Package Dependency...”
2. Search for “FHIRModels” in the panel that comes up or paste the full URL to the GitHub repository, then select the package
3. Pick the versioning that best works for you (usually the current version and “up to next major”)
4. In order to update the dependency, periodically select “Update to Latest Package Versions” from Xcode 11's “File” » “Swift Package Management” menu

Alternatively, you can add FHIRModels to your `Package.swift` file as a dependency:

```swift
dependencies: [
    .package(url: "https://github.com/apple/FHIRModels.git",
            .upToNextMajor(from: "0.2.0"))
]
```

Usage
=====

Learn how to use FHIRModels in our [How To section](./HowTo/README.md).

Getting Involved
================

Please feel free to open [GitHub issues][issues] for questions, suggestions or issues you may have.
Because the majority of the codebase is generated we will not be able to accept Pull Requests at this time.

License
=======

This work is [APACHE 2.0 licensed](./LICENSE).

FHIR® is the registered trademark of HL7 and is used with the permission of HL7. Use of the FHIR trademark does not constitute endorsement of this product by HL7.

[fhir]: https://hl7.org/fhir
[issues]: https://github.com/apple/FHIRModels/issues
[spm]: https://github.com/apple/swift-package-manager
