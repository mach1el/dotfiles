import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Network"
    Depends { name: "Qt"; submodules: ["core"]}

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
    libNameForLinkerDebug: "Qt5Network"
    libNameForLinkerRelease: "Qt5Network"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5Network.so.5.12.2"
    cpp.defines: ["QT_NETWORK_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtNetwork"]
    cpp.libraryPaths: []
    Group {
        files: [Qt["network"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}
