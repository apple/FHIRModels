//
//  Element+Extensions.swift
//  HealthSoftware
//
//  2020, Apple Inc.
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

public extension Element {
	
	/**
	 Returns an array of Extensions matching the desired URL. An empty array is returned if there are no extensions that
	 match or there are no extensions at all.
	 */
	func extensions(for url: String) -> [Extension] {
		let matches = `extension`?.filter {
			return $0.url.value?.url.absoluteString == url
		}
		return matches ?? []
	}
}
