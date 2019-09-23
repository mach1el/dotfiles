import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "PacketProtocol"
    Depends { name: "Qt"; submodules: ["core-private"]}

    architectures: ["x86_64"]
    targetPlatform: "linux"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5PacketProtocol"
    libNameForLinkerRelease: "Qt5PacketProtocol"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5PacketProtocol.a"
    cpp.defines: ["QT_PACKETPROTOCOL_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtPacketProtocol", "/usr/include/qt/QtPacketProtocol/5.12.2", "/usr/include/qt/QtPacketProtocol/5.12.2/QtPacketProtocol"]
    cpp.libraryPaths: []
    isStaticLibrary: true
Group {
        files: [Qt["packetprotocol-private"].libFilePath]
        filesAreTargets: true
        fileTags: ["staticlibrary"]
    }
}
