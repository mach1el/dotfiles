import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "WebSockets"
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
    libNameForLinkerDebug: "Qt5WebSockets"
    libNameForLinkerRelease: "Qt5WebSockets"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5WebSockets.so.5.12.2"
    cpp.defines: ["QT_WEBSOCKETS_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtWebSockets"]
    cpp.libraryPaths: []
    Group {
        files: [Qt["websockets"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}
