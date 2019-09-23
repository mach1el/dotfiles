import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "NetworkAuth"
    Depends { name: "Qt"; submodules: ["core", "network"]}

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
    libNameForLinkerDebug: "Qt5NetworkAuth"
    libNameForLinkerRelease: "Qt5NetworkAuth"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5NetworkAuth.so.5.12.2"
    cpp.defines: ["QT_NETWORKAUTH_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtNetworkAuth"]
    cpp.libraryPaths: []
    Group {
        files: [Qt["networkauth"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}
