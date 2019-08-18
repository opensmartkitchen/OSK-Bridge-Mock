// swift-tools-version:4.2
import PackageDescription

let package = Package(
    name: "OSKBridgeMock",
    products: [
        // Executables
        .executable(name: "OskBridgeMainMock", targets: ["OskBridgeMainMock"]),
        // Libraries
        .library(name: "OskGadgetCWrapMock", targets: ["OskGadgetCWrapMock"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "OskGadgetCWrapMock", dependencies:[]),
        .target(
            name: "OskBridgeMainMock", 
            dependencies:["OskGadgetCWrapMock"]
        ),
    ],
    swiftLanguageVersions: [.v4_2]
)
