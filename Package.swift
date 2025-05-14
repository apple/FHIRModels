// swift-tools-version:5.7
import PackageDescription

let package = Package(
	name: "FHIRModels",
	platforms: [
		.macOS(.v10_14),
		.iOS(.v12),
		.watchOS(.v5),
		.tvOS(.v12),
	],
	products: [
		.library(name: "ModelsDSTU2", targets: ["ModelsDSTU2"]),
		.library(name: "ModelsSTU3", targets: ["ModelsSTU3"]),
		.library(name: "ModelsR4", targets: ["ModelsR4"]),
		.library(name: "ModelsR4B", targets: ["ModelsR4B"]),
        .library(name: "ModelsR5", targets: ["ModelsR5"]),
		.library(name: "ModelsBuild", targets: ["ModelsBuild"]),
	],
	targets: [
		.target(name: "FMCore"),
		.target(name: "ModelsDSTU2", dependencies: ["FMCore"]),
		.target(name: "ModelsSTU3", dependencies: ["FMCore"]),
		.target(name: "ModelsR4", dependencies: ["FMCore"]),
		.target(name: "ModelsR4B", dependencies: ["FMCore"]),
		.target(name: "ModelsR5", dependencies: ["FMCore"]),
		.target(name: "ModelsBuild", dependencies: ["FMCore"]),
		.testTarget(name: "CoreTests", dependencies: ["FMCore"]),
		.testTarget(name: "DateTimeTests", dependencies: ["ModelsR5"]),
		.testTarget(name: "ModelTests",
					dependencies: [
						"ModelsDSTU2",
						"ModelsSTU3",
						"ModelsR4",
						"ModelsR4B",
						"ModelsR5",
						"ModelsBuild",
					]),
		.testTarget(name: "PrimitiveTests", dependencies: ["ModelsR4"]),
	]
)
