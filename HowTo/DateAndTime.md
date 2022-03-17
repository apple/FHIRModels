# Date & Time

FHIRModels handles date/time ↔︎ string conversion transparently and will discard invalid dates.

```swift
do {
    let dateTimeString = "2020-03-12T12:33:54.6543-06:00"
    let dateTime = try DateTime(dateTimeString)
    dateTime.date.year == 2020
    dateTime.time.minute == 33
    dateTime.timeZone == TimeZone(secondsFromGMT: -6 * 3600)
} catch {
    print("Failed to parse date time string: \(error)")
}
```
