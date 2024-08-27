// swift-tools-version:5.8

import PackageDescription

let package = Package(
    name: "MPVKit",
    platforms: [.macOS(.v10_15), .iOS(.v13), .tvOS(.v13)],
    products: [
        .library(
            name: "MPVKit",
            targets: ["_MPVKit"]
        ),
        .library(
            name: "MPVKit-GPL",
            targets: ["_MPVKit-GPL"]
        ),
    ],
    targets: [
        .target(
            name: "_MPVKit",
            dependencies: [
                "Libmpv", "_FFmpeg", "Libuchardet", "Libbluray",
                .target(name: "Libluajit", condition: .when(platforms: [.macOS])),
            ],
            path: "Sources/_MPVKit",
            linkerSettings: [
                .linkedFramework("AVFoundation"),
                .linkedFramework("CoreAudio"),
            ]
        ),
        .target(
            name: "_FFmpeg",
            dependencies: [
                "Libavcodec", "Libavfilter", "Libavformat", "Libavutil", "Libswresample", "Libswscale",
                "Libssl", "Libcrypto", "Libass", "Libfreetype", "Libfribidi", "Libharfbuzz",
                "MoltenVK", "Libshaderc_combined", "lcms2", "Libplacebo", "Libdovi", "Libunibreak",
                "gmp", "nettle", "hogweed", "gnutls", "Libdav1d"
            ],
            path: "Sources/_FFmpeg",
            linkerSettings: [
                .linkedFramework("AudioToolbox"),
                .linkedFramework("CoreVideo"),
                .linkedFramework("CoreFoundation"),
                .linkedFramework("CoreMedia"),
                .linkedFramework("Metal"),
                .linkedFramework("VideoToolbox"),
                .linkedLibrary("bz2"),
                .linkedLibrary("iconv"),
                .linkedLibrary("expat"),
                .linkedLibrary("resolv"),
                .linkedLibrary("xml2"),
                .linkedLibrary("z"),
                .linkedLibrary("c++"),
            ]
        ),
        .target(
            name: "_MPVKit-GPL",
            dependencies: [
                "Libmpv-GPL", "_FFmpeg-GPL", "Libuchardet", "Libbluray",
                .target(name: "Libluajit", condition: .when(platforms: [.macOS])),
            ],
            path: "Sources/_MPVKit-GPL",
            linkerSettings: [
                .linkedFramework("AVFoundation"),
                .linkedFramework("CoreAudio"),
            ]
        ),
        .target(
            name: "_FFmpeg-GPL",
            dependencies: [
                "Libavcodec-GPL", "Libavfilter-GPL", "Libavformat-GPL", "Libavutil-GPL", "Libswresample-GPL", "Libswscale-GPL",
                "Libssl", "Libcrypto", "Libass", "Libfreetype", "Libfribidi", "Libharfbuzz",
                "MoltenVK", "Libshaderc_combined", "lcms2", "Libplacebo", "Libdovi", "Libunibreak",
                "Libsmbclient", "gmp", "nettle", "hogweed", "gnutls", "Libdav1d"
            ],
            path: "Sources/_FFmpeg-GPL",
            linkerSettings: [
                .linkedFramework("AudioToolbox"),
                .linkedFramework("CoreVideo"),
                .linkedFramework("CoreFoundation"),
                .linkedFramework("CoreMedia"),
                .linkedFramework("Metal"),
                .linkedFramework("VideoToolbox"),
                .linkedLibrary("bz2"),
                .linkedLibrary("iconv"),
                .linkedLibrary("expat"),
                .linkedLibrary("resolv"),
                .linkedLibrary("xml2"),
                .linkedLibrary("z"),
                .linkedLibrary("c++"),
            ]
        ),

        .binaryTarget(
            name: "Libmpv-GPL",
            url: "https://github.com/stonerl/MPVKit/releases/download/0.38.0_1/Libmpv-GPL.xcframework.zip",
            checksum: "bc5f26a29fb5bb67fd96efc57c9f3c286ee55588b7b82291046a8eac3ed94649"
        ),
        .binaryTarget(
            name: "Libavcodec-GPL",
            url: "https://github.com/stonerl/MPVKit/releases/download/0.38.0_1/Libavcodec-GPL.xcframework.zip",
            checksum: "e4744ca9efee3d71ec9a8eea950b8986547aca3373d79a7e749e7c17d4fd8231"
        ),
        .binaryTarget(
            name: "Libavformat-GPL",
            url: "https://github.com/stonerl/MPVKit/releases/download/0.38.0_1/Libavformat-GPL.xcframework.zip",
            checksum: "aaeb83c9202ac86ae681cd412ee4da8fa0fc0289a5041e9ac1c9c52b77b8c3bf"
        ),
        .binaryTarget(
            name: "Libavfilter-GPL",
            url: "https://github.com/stonerl/MPVKit/releases/download/0.38.0_1/Libavfilter-GPL.xcframework.zip",
            checksum: "59f8ffc980564440cb6af55ea0b9c6005d8bbf5e2c8e4ceb9b949d19bb826085"
        ),
        .binaryTarget(
            name: "Libavutil-GPL",
            url: "https://github.com/stonerl/MPVKit/releases/download/0.38.0_1/Libavutil-GPL.xcframework.zip",
            checksum: "5328fe78c9f4948b33470382a0dd980a5d4d43042d838d50760eabdc31233588"
        ),
        .binaryTarget(
            name: "Libswresample-GPL",
            url: "https://github.com/stonerl/MPVKit/releases/download/0.38.0_1/Libswresample-GPL.xcframework.zip",
            checksum: "0fbc9e102b1d2130e78c7737a57386c7c70f257a73d678b663a56cc22e0dc6b0"
        ),
        .binaryTarget(
            name: "Libswscale-GPL",
            url: "https://github.com/stonerl/MPVKit/releases/download/0.38.0_1/Libswscale-GPL.xcframework.zip",
            checksum: "03aec4e5d84824b0b03fd63636f597d9ca12b01a78b499e15ef399ada05aea32"
        ),
        //AUTO_GENERATE_TARGETS_BEGIN//

        .binaryTarget(
            name: "Libcrypto",
            url: "https://github.com/mpvkit/openssl-build/releases/download/3.2.0/Libcrypto.xcframework.zip",
            checksum: "89989ea14f7297d98083eb8adfba9b389f5b4886cb54fb3d5b6e8b915b7adf1d"
        ),
        .binaryTarget(
            name: "Libssl",
            url: "https://github.com/mpvkit/openssl-build/releases/download/3.2.0/Libssl.xcframework.zip",
            checksum: "46ad8e8fa5a6efe7bd31c9b3c56b20c1bc29a581083588d86e941d261d7dbe98"
        ),

        .binaryTarget(
            name: "gmp",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.3/gmp.xcframework.zip",
            checksum: "defd5623e6786543588001b8f33026395960a561540738deb6df6996d39f957d"
        ),

        .binaryTarget(
            name: "nettle",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.3/nettle.xcframework.zip",
            checksum: "c3b8f506fa32bcb3f9bf65096b0556c4f5973f846ee964577d783edbe8e6969d"
        ),
        .binaryTarget(
            name: "hogweed",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.3/hogweed.xcframework.zip",
            checksum: "47a34e7877f7ebd9175f5645059030e553276faa9a21b91e29fb7463b94e8daf"
        ),

        .binaryTarget(
            name: "gnutls",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.3/gnutls.xcframework.zip",
            checksum: "5f5cf903a2d52157c29ad304260709f618ce086afea02061241982f8425a6fb0"
        ),

        .binaryTarget(
            name: "Libunibreak",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3/Libunibreak.xcframework.zip",
            checksum: "430ed1a8ff1a230bd93b6868021cde2aafb23c8cb2d586525836cac47c4f310f"
        ),

        .binaryTarget(
            name: "Libfreetype",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3/Libfreetype.xcframework.zip",
            checksum: "300d2966c914e06f0211d8da0ea6208a345709b888e9cbbf1cdd94df26330359"
        ),

        .binaryTarget(
            name: "Libfribidi",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3/Libfribidi.xcframework.zip",
            checksum: "4a3122a2027f021937ed0fa07173dca7f2c1c4c4202b7caf8043fa80408c0953"
        ),

        .binaryTarget(
            name: "Libharfbuzz",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3/Libharfbuzz.xcframework.zip",
            checksum: "f607773598caa72435d8b19ce6a9d54fa7f26cde126b6b66c0a3d2804f084c68"
        ),

        .binaryTarget(
            name: "Libass",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3/Libass.xcframework.zip",
            checksum: "af24cd1429069153f0ca5c650e0b374c27ae38283aca47cbbbc9edb3165b182e"
        ),

        .binaryTarget(
            name: "Libsmbclient",
            url: "https://github.com/mpvkit/libsmbclient-build/releases/download/4.15.13/Libsmbclient.xcframework.zip",
            checksum: "589db9c241e6cc274f2825bee542add273febd0666ebd7ea8a402574ed76e9af"
        ),

        .binaryTarget(
            name: "Libdovi",
            url: "https://github.com/mpvkit/libdovi-build/releases/download/3.3.0/Libdovi.xcframework.zip",
            checksum: "ca4382ea4e17103fbcc979d0ddee69a6eb8967c0ab235cb786ffa96da5f512ed"
        ),

        .binaryTarget(
            name: "MoltenVK",
            url: "https://github.com/mpvkit/moltenvk-build/releases/download/1.2.9/MoltenVK.xcframework.zip",
            checksum: "02dd7f51814855b7db9eacd883042b3e9481eb658de6bc63290af80149f2b94f"
        ),

        .binaryTarget(
            name: "Libshaderc_combined",
            url: "https://github.com/mpvkit/libshaderc-build/releases/download/2024.1.0-fix/Libshaderc_combined.xcframework.zip",
            checksum: "049236601b70155baeb78a124c8b30f3e4f31f5aa4c6d20370d58c62eca87ec3"
        ),

        .binaryTarget(
            name: "lcms2",
            url: "https://github.com/mpvkit/libplacebo-build/releases/download/7.349.0/lcms2.xcframework.zip",
            checksum: "bd2c27366f8b7adfe7bf652a922599891c55b82f5c519bcc4eece1ccff57c889"
        ),

        .binaryTarget(
            name: "Libplacebo",
            url: "https://github.com/mpvkit/libplacebo-build/releases/download/7.349.0/Libplacebo.xcframework.zip",
            checksum: "f32d20351289a080cd7288742747cd927553fde8c217f63263b838083d07a01a"
        ),

        .binaryTarget(
            name: "Libdav1d",
            url: "https://github.com/mpvkit/libdav1d-build/releases/download/1.4.3/Libdav1d.xcframework.zip",
            checksum: "eccfe37da9418e350bc6c1566890fa5b9585fbb87b8ceb664de77800ef17fe04"
        ),

        .binaryTarget(
            name: "Libavcodec",
            url: "https://github.com/stonerl/MPVKit/releases/download/0.38.0_1/Libavcodec.xcframework.zip",
            checksum: "fafe046e327df77a1e53588e52c7a33b8897537ebb1aeebeff3016266367868c"
        ),
        .binaryTarget(
            name: "Libavformat",
            url: "https://github.com/stonerl/MPVKit/releases/download/0.38.0_1/Libavformat.xcframework.zip",
            checksum: "99dd4608bec8ffc7f914ba2b05eae4ba64b9459f26226845a0e01366f644be61"
        ),
        .binaryTarget(
            name: "Libavfilter",
            url: "https://github.com/stonerl/MPVKit/releases/download/0.38.0_1/Libavfilter.xcframework.zip",
            checksum: "8e095a0fdc23b550548cc525b456f989fb65d7343d892c6f8d58048b11e449d8"
        ),
        .binaryTarget(
            name: "Libavutil",
            url: "https://github.com/stonerl/MPVKit/releases/download/0.38.0_1/Libavutil.xcframework.zip",
            checksum: "712221f0d5e1ce1c499db07ee394ed98015bb553e54f69ee1b92616a47f8e606"
        ),
        .binaryTarget(
            name: "Libswresample",
            url: "https://github.com/stonerl/MPVKit/releases/download/0.38.0_1/Libswresample.xcframework.zip",
            checksum: "ab0ade927c9968dba5c59a727afba5fbc3ab4afe1ca302b3988ee2c5908e7639"
        ),
        .binaryTarget(
            name: "Libswscale",
            url: "https://github.com/stonerl/MPVKit/releases/download/0.38.0_1/Libswscale.xcframework.zip",
            checksum: "62c903d330523c62f05bc497abccdc4ee34459a0762d7ac0febd9b180c088253"
        ),

        .binaryTarget(
            name: "Libuchardet",
            url: "https://github.com/mpvkit/libuchardet-build/releases/download/0.0.8/Libuchardet.xcframework.zip",
            checksum: "80b14d8080c2531ced6d6b234a826c13f0be459a8c751815f68e0eefd34afa30"
        ),

        .binaryTarget(
            name: "Libbluray",
            url: "https://github.com/stonerl/MPVKit/releases/download/0.38.0_1/Libbluray.xcframework.zip",
            checksum: "252b2c23f9b8751fff2a21d93e3569433082364bfbce8ab8f41d728353f4af6f"
        ),

        .binaryTarget(
            name: "Libmpv",
            url: "https://github.com/stonerl/MPVKit/releases/download/0.38.0_1/Libmpv.xcframework.zip",
            checksum: "315be0d01f041b39078ad9f11bb65df09f9c8664899c35951aa29eba53e4c3e1"
        ),
        //AUTO_GENERATE_TARGETS_END//
    ]
)
