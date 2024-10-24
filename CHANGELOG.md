Changelog
=========

The changelog is in reverse chronological order, as usual.

## 0.6.0

- BREAKING CHANGES: update _build_ models to 6.0.0-ballot2 (http://build.fhir.org/)

## 0.5.0

- Add R5 release
- Add R4B release

## 0.4.0

- BREAKING CHANGES: fix duplicate code system names resulting in https://github.com/apple/FHIRModels/issues/11
- BREAKING CHANGES: regenerate R4 models to resolve https://github.com/apple/FHIRModels/issues/15
- Update _build_ models to 4.6.0-048af26
- Enhancement: make dates & times conform to `Comparable` and `ExpressibleAsNSDate`
- Fix an issue where times with milliseconds were not proper ISO formatted in certain locales

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
