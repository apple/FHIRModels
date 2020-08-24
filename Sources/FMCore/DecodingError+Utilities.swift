//
//  DecodingError+Utilities.swift
//  HealthSoftware
//
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

public extension CodingKey {
	
	var hs_keyPathRepresentation: String {
		if let intValue = intValue {
			return String(intValue)
		}
		return stringValue
	}
}

public extension DecodingError.Context {
	
	var hs_keyPathRepresentation: String {
		return codingPath.map { $0.hs_keyPathRepresentation }.joined(separator: ".")
	}
}

public extension DecodingError {
	
	/**
	`DecodingError` apparently already adopts `LocalizedError`, however the following override is not showing up when
	calling `localizedDescription` on a DecodingError. Hence you need to do this:
	
	```
	do {
		try ...
	} catch let error as DecodingError {
		print("Failed: \(error.errorDescription ?? error.localizedDescription)")
	} catch {
		print("Failed: \(error.localizedDescription)")
	}
	```
	*/
	var errorDescription: String? {
		switch self {
		case .dataCorrupted(let errorContext):
			if !errorContext.debugDescription.isEmpty {
				return errorContext.hs_keyPathRepresentation.appending(" [\(errorContext.debugDescription)]")
			}
			return errorContext.hs_keyPathRepresentation.appending(" [data corrupted]")
		case .keyNotFound(let keyName, let errorContext):
			return errorContext.hs_keyPathRepresentation.appending(".\(keyName.hs_keyPathRepresentation) [is missing]")
		case .valueNotFound(let dataType, let errorContext):
			return errorContext.hs_keyPathRepresentation.appending(" [not found; \(dataType)]")
		case .typeMismatch(let dataType, let errorContext):
			return errorContext.hs_keyPathRepresentation.appending(" [not \(dataType)]")
		@unknown default:
			return nil
		}
	}
}
