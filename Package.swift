// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "DummySDKPackage",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "SecSDK",
            targets: ["SecSDK"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "SecSDK",
            url: "https://YOUR-DOMAIN-OR-GITHUB-RELEASES-URL/SecSDK.xcframework.zip",
            checksum: "05191b73c1a003cb2c7cbffad31216c9cafccc54a872281996f5a815068661b8"
        )
    ]
)
