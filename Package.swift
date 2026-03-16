// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "PaymentsSDKPackage",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "PaymentsSDK",
            targets: ["PaymentsSDKWrapper"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/andreiliscan/SecSDKPackageZip.git", from: "0.0.2")
    ],
    targets: [
        .binaryTarget(
            name: "PaymentsSDKBinary",
            url: "https://github.com/andreiliscan/PaymentsSDKPackage/releases/download/0.0.1/PaymentsSDK.xcframework.zip",
            checksum: "41d01f8f3045c086e5d017dfda247d9235988302bb2e2a0f63b0171272a8c661"
        ),
        .target(
            name: "PaymentsSDKWrapper",
            dependencies: [
                "PaymentsSDKBinary",
                .product(name: "SecSDK", package: "SecSDKPackageZip")
            ],
            path: "Sources/PaymentsSDKWrapper"
        )
    ]
)
