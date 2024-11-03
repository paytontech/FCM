// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "FCM",
    platforms: [
       .macOS(.v11),
       .iOS(.v14)
    ],
    products: [
        //Vapor client for Firebase Cloud Messaging
        .library(name: "FCM", targets: ["FCM"]),
    ],
    dependencies: [
        // 💧 A server-side Swift web framework.
        .package(url: "https://github.com/vapor/vapor.git", from: "4.0.0"),
        .package(url: "https://github.com/vapor/jwt.git", from: "4.0.0"),
        .package(url: "https://github.com/SwiftyJSON/SwiftyJSON.git", from: "4.0.0")
    ],
    targets: [
        .target(name: "FCM", dependencies: [
            .product(name: "Vapor", package: "vapor"),
            .product(name: "JWT", package: "jwt"),
            .product(name: "SwiftyJSON", package: "SwiftyJSON")
        ]),
        .testTarget(name: "FCMTests", dependencies: [
            .target(name: "FCM"),
        ]),
    ]
)
