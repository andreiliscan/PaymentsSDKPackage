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
            url: "https://github.com/andreiliscan/PaymentsSDKPackage/releases/download/0.0.2/PaymentsSDK.xcframework.zip",
            checksum: "18b105d3b1276ddf695e472da07e6181431e36aa709ae6604c24efa3e8a9f2b6"
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
