import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "WebEngineCore"
    Depends { name: "Qt"; submodules: ["core", "gui", "qml", "quick", "positioning", "webchannel"]}

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
    libNameForLinkerDebug: "Qt5WebEngineCore"
    libNameForLinkerRelease: "Qt5WebEngineCore"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5WebEngineCore.so.5.12.2"
    cpp.defines: ["QT_WEBENGINECORE_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtWebEngineCore"]
    cpp.libraryPaths: []
    Group {
        files: [Qt["webenginecore"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}
