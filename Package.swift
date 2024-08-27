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
                //.target(name: "Libluajit", condition: .when(platforms: [.macOS])),
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
                //.target(name: "Libluajit", condition: .when(platforms: [.macOS])),
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
            url: "https://github.com/stonerl/MPVKit/releases/download/0.38.0_2/Libmpv-GPL.xcframework.zip",
            checksum: "5c411c55255ff4506fc0d49a459268d630c371169c6ee447fcf92f9e97f3d9df"
        ),
        .binaryTarget(
            name: "Libavcodec-GPL",
            url: "https://github.com/stonerl/MPVKit/releases/download/0.38.0_2/Libavcodec-GPL.xcframework.zip",
            checksum: "4e57d0ee237428060b57ab915577488a0ccdb092788ea29cceadca93e9a053a8"
        ),
        .binaryTarget(
            name: "Libavformat-GPL",
            url: "https://github.com/stonerl/MPVKit/releases/download/0.38.0_2/Libavformat-GPL.xcframework.zip",
            checksum: "2d3aac0a5b03892c34e6cb7f9151b8c67060a94406e33c3ee8d548b2072370bf"
        ),
        .binaryTarget(
            name: "Libavfilter-GPL",
            url: "https://github.com/stonerl/MPVKit/releases/download/0.38.0_2/Libavfilter-GPL.xcframework.zip",
            checksum: "fc113e2b2b542d0e7bfc1718a991de89755473e1b15881784b97bec4cc7c2eed"
        ),
        .binaryTarget(
            name: "Libavutil-GPL",
            url: "https://github.com/stonerl/MPVKit/releases/download/0.38.0_2/Libavutil-GPL.xcframework.zip",
            checksum: "3f0ea956271afcba4e22defa62644a14e331b5885ad30bf412a5375243c41562"
        ),
        .binaryTarget(
            name: "Libswresample-GPL",
            url: "https://github.com/stonerl/MPVKit/releases/download/0.38.0_2/Libswresample-GPL.xcframework.zip",
            checksum: "bd559ffee8801d81ffa56ec13b5af81a17c5b41cb07ced61baea8926d390735b"
        ),
        .binaryTarget(
            name: "Libswscale-GPL",
            url: "https://github.com/stonerl/MPVKit/releases/download/0.38.0_2/Libswscale-GPL.xcframework.zip",
            checksum: "55ce4874f996ce804c2f8ad850f3bb633825f8ebaf93fa08a8b2f988a23a9112"
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
            url: "https://github.com/stonerl/MPVKit/releases/download/0.38.0_2/Libavcodec.xcframework.zip",
            checksum: "477a8a2ab2bb39cfbd57ac297f796d2771b6e72b98b7b6d078b99bff3647c4aa"
        ),
        .binaryTarget(
            name: "Libavformat",
            url: "https://github.com/stonerl/MPVKit/releases/download/0.38.0_2/Libavformat.xcframework.zip",
            checksum: "cadd4d62ef7cd3d7a59373554584ae2f25e63ba35fee6e2f89813010d68db7a0"
        ),
        .binaryTarget(
            name: "Libavfilter",
            url: "https://github.com/stonerl/MPVKit/releases/download/0.38.0_2/Libavfilter.xcframework.zip",
            checksum: "343d6223ef0853e2fc0424c577d0d8bf8ca5b59330f0ab70ab4f97185701ae9a"
        ),
        .binaryTarget(
            name: "Libavutil",
            url: "https://github.com/stonerl/MPVKit/releases/download/0.38.0_2/Libavutil.xcframework.zip",
            checksum: "017d034f75b67cc1769b9482b4bf1d385a8044a2349e2d079a38fdc54392eb98"
        ),
        .binaryTarget(
            name: "Libswresample",
            url: "https://github.com/stonerl/MPVKit/releases/download/0.38.0_2/Libswresample.xcframework.zip",
            checksum: "e82fe3b31e78a7e0b7c8ba6004b5071d207aad0bd6878ac79a6e5df55f30ec6e"
        ),
        .binaryTarget(
            name: "Libswscale",
            url: "https://github.com/stonerl/MPVKit/releases/download/0.38.0_2/Libswscale.xcframework.zip",
            checksum: "9304604967c5706d83042beabb7cef91807f612739d0ed910e7b36a3e295afe8"
        ),

        .binaryTarget(
            name: "Libuchardet",
            url: "https://github.com/mpvkit/libuchardet-build/releases/download/0.0.8/Libuchardet.xcframework.zip",
            checksum: "80b14d8080c2531ced6d6b234a826c13f0be459a8c751815f68e0eefd34afa30"
        ),

        /*.binaryTarget(
            name: "Libluajit",
            url: "https://github.com/mpvkit/libluajit-build/releases/download/2.1.0/Libluajit.xcframework.zip",
            checksum: "3765d7c6392b4f9a945b334ed593747b8adb9345078717ecfb6d7d12114a0f9e"
        ),*/

        .binaryTarget(
            name: "Libbluray",
            url: "https://github.com/stonerl/MPVKit/releases/download/0.38.0_2/Libbluray.xcframework.zip",
            checksum: "cbea1f0839206e62af5f173d9b4b1eaac901dc2d3c68fb0ce7c0da919c3f5b44"
        ),

        .binaryTarget(
            name: "Libmpv",
            url: "https://github.com/stonerl/MPVKit/releases/download/0.38.0_2/Libmpv.xcframework.zip",
            checksum: "961f3b58d9e3f62c0ab3ef60a9a5917a054454b0c907a64d76b4adab3b241364"
        ),
        //AUTO_GENERATE_TARGETS_END//
    ]
)
