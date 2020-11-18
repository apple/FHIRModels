Changelog
=========

The changelog is in reverse chronological order, as usual.

### 0.3.2

- Fix time formatting in certain locales: https://github.com/apple/FHIRModels/issues/7

### 0.3.1

- Add extensions for converting FHIRDate, DateTime, and Instant to NSDate
- Add extensions for converting NSDate to FHIRTime, FHIRDate, DateTime, and Instant

## 0.3.0

- Update _build_ models to 4.5.0-a621ed4bdc (http://hl7.org/fhir/2020Sep/)

### 0.2.1

- Successfully build library under Linux (#4)
- Add `extensions(for:) -> [Extension]` utility method
- Add `var resourceType: String` to `ResourceProxy`
- Add `CHANGELOG.md`

## 0.2.0

- Add STU3 support (#2)

## 0.1.0

- Initial release with DSTU2, R4 and 4.4 support
