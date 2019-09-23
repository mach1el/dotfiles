import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "WebChannel"
    Depends { name: "Qt"; submodules: ["core", "qml"]}

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
    libNameForLinkerDebug: "Qt5WebChannel"
    libNameForLinkerRelease: "Qt5WebChannel"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5WebChannel.so.5.12.2"
    cpp.defines: ["QT_WEBCHANNEL_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtWebChannel"]
    cpp.libraryPaths: []
    Group {
        files: [Qt["webchannel"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}
