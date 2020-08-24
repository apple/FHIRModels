// swift-tools-version:5.0
import PackageDescription

let package = Package(
	name: "FHIRModels",
	platforms: [
		.macOS(.v10_13),
		.iOS(.v11),
		.watchOS(.v4),
		.tvOS(.v11),
	],
	products: [
		.library(name: "ModelsDSTU2", targets: ["ModelsDSTU2"]),
		.library(name: "ModelsSTU3", targets: ["ModelsSTU3"]),
		.library(name: "ModelsR4", targets: ["ModelsR4"]),
		.library(name: "ModelsBuild", targets: ["ModelsBuild"]),
	],
	targets: [
		.target(name: "FMCore"),
		.target(name: "ModelsDSTU2", dependencies: ["FMCore"]),
		.target(name: "ModelsSTU3", dependencies: ["FMCore"]),
		.target(name: "ModelsR4", dependencies: ["FMCore"]),
		.target(name: "ModelsBuild", dependencies: ["FMCore"]),
		.testTarget(name: "CoreTests", dependencies: ["FMCore"]),
		.testTarget(name: "DateTimeTests", dependencies: ["ModelsR4"]),
		.testTarget(name: "ModelTests",
		            dependencies: [
		            	"ModelsDSTU2",
		            	"ModelsSTU3",
		            	"ModelsR4",
		            	"ModelsBuild",
		            ]),
		.testTarget(name: "PrimitiveTests", dependencies: ["ModelsR4"]),
	]
)
