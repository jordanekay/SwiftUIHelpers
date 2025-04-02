// swift-tools-version:6.0
import PackageDescription

let package = Package(
    name: "swiftui-helpers",
    platforms: [
        .iOS(.v17),
        .macOS(.v14)
    ],
    products: [
        .library(
            name: "Helpers",
            targets: ["Helpers"]
        )
    ],
    targets: [.target(name: "Helpers")],
    swiftLanguageModes: [.v6]
)

for target in package.targets {
    target.swiftSettings = [
        .enableExperimentalFeature("StrictConcurrency"),
        .enableUpcomingFeature("ExistentialAny"),
        .enableUpcomingFeature("InternalImportsByDefault")
    ]
}

