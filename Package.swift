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
            checksum: "86951f6e97a7540aa7dccb88badd99a04da035a7a41ef3b7d0325917deca03be"
        ),
        .binaryTarget(
            name: "Libavcodec-GPL",
            url: "https://github.com/stonerl/MPVKit/releases/download/0.38.0_1/Libavcodec-GPL.xcframework.zip",
            checksum: "21103ff98ee693b742627221c7bdd77bc098a2e27da9842cf8b8e090d76bdddc"
        ),
        .binaryTarget(
            name: "Libavformat-GPL",
            url: "https://github.com/stonerl/MPVKit/releases/download/0.38.0_1/Libavformat-GPL.xcframework.zip",
            checksum: "5bfef959657b2977ca395601b51ec6f57b4ec781b1b71c9533077460fc4a3387"
        ),
        .binaryTarget(
            name: "Libavfilter-GPL",
            url: "https://github.com/stonerl/MPVKit/releases/download/0.38.0_1/Libavfilter-GPL.xcframework.zip",
            checksum: "a196e15c3f421f26437d2e0c982ea873f70d82345480a123f2870a061c5d0fbb"
        ),
        .binaryTarget(
            name: "Libavutil-GPL",
            url: "https://github.com/stonerl/MPVKit/releases/download/0.38.0_1/Libavutil-GPL.xcframework.zip",
            checksum: "6f9345e3c7ac4934ee392a9f8a9850f736df0ab6baf48f539599b08f1977130b"
        ),
        .binaryTarget(
            name: "Libswresample-GPL",
            url: "https://github.com/stonerl/MPVKit/releases/download/0.38.0_1/Libswresample-GPL.xcframework.zip",
            checksum: "eae9f4c96c157eba486edad85a65f0ca43035d880683e1528c5e2901a10d9471"
        ),
        .binaryTarget(
            name: "Libswscale-GPL",
            url: "https://github.com/stonerl/MPVKit/releases/download/0.38.0_1/Libswscale-GPL.xcframework.zip",
            checksum: "033ab220b9f5c8bf7f38388ff70a6dbc14710324459144650d5686ce1cc61b9a"
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
            checksum: "35c95feb43a2137287ccad28b51e9345369a10745b32518da4ef3d2cf5b4b5f4"
        ),
        .binaryTarget(
            name: "Libavformat",
            url: "https://github.com/stonerl/MPVKit/releases/download/0.38.0_1/Libavformat.xcframework.zip",
            checksum: "2a3c1fbfc5eccd9f83120bce773efb3242338cd17179169f47accbd529a81ae5"
        ),
        .binaryTarget(
            name: "Libavfilter",
            url: "https://github.com/stonerl/MPVKit/releases/download/0.38.0_1/Libavfilter.xcframework.zip",
            checksum: "74cf799e1de3b68334f59f0f076be5c4bb378579824b4ea0f46b8d453ced122f"
        ),
        .binaryTarget(
            name: "Libavutil",
            url: "https://github.com/stonerl/MPVKit/releases/download/0.38.0_1/Libavutil.xcframework.zip",
            checksum: "6243cf52b29d09fff3c06779eb501087d8f79dfcb0a2010ee2c6472950b7e6a5"
        ),
        .binaryTarget(
            name: "Libswresample",
            url: "https://github.com/stonerl/MPVKit/releases/download/0.38.0_1/Libswresample.xcframework.zip",
            checksum: "b2a85f002850e864ba7bccb9feaebdb6590ec60868c84add849b347c28770a9d"
        ),
        .binaryTarget(
            name: "Libswscale",
            url: "https://github.com/stonerl/MPVKit/releases/download/0.38.0_1/Libswscale.xcframework.zip",
            checksum: "d3c53201c7722937104b55b675a4c8f14a61f9fbfc08f49bc7320b646b089bd5"
        ),

        .binaryTarget(
            name: "Libuchardet",
            url: "https://github.com/mpvkit/libuchardet-build/releases/download/0.0.8/Libuchardet.xcframework.zip",
            checksum: "80b14d8080c2531ced6d6b234a826c13f0be459a8c751815f68e0eefd34afa30"
        ),

        .binaryTarget(
            name: "Libluajit",
            url: "https://github.com/mpvkit/libluajit-build/releases/download/2.1.0/Libluajit.xcframework.zip",
            checksum: "3765d7c6392b4f9a945b334ed593747b8adb9345078717ecfb6d7d12114a0f9e"
        ),

        .binaryTarget(
            name: "Libbluray",
            url: "https://github.com/stonerl/MPVKit/releases/download/0.38.0_1/Libbluray.xcframework.zip",
            checksum: "182c50399a18152fac25e16406f25c6bcdbb538f7a578e073da491a6b9910290"
        ),

        .binaryTarget(
            name: "Libmpv",
            url: "https://github.com/stonerl/MPVKit/releases/download/0.38.0_1/Libmpv.xcframework.zip",
            checksum: "aa7ef0ec0be92e46c976d7c4ae5fedcda561e063d351595c86e4fac110459f2d"
        ),
        //AUTO_GENERATE_TARGETS_END//
    ]
)
