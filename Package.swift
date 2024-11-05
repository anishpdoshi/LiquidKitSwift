// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "LiquidKit",
    platforms: [
        .iOS(.v14), .macOS(.v11)
    ],
    products: [
        .library(
            name: "LiquidKit",
            targets: ["LiquidKit"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/IBM-Swift/swift-html-entities.git", .branch("master"))
    ],
    targets: [
        .target(
            name: "LiquidKit",
            dependencies: [
                .product(name: "HTMLEntities", package: "swift-html-entities")
            ]
        )
    ]
)
