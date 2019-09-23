import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "WebEngine"
    Depends { name: "Qt"; submodules: ["core", "gui", "qml", "quick", "webenginecore"]}

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
    libNameForLinkerDebug: "Qt5WebEngine"
    libNameForLinkerRelease: "Qt5WebEngine"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5WebEngine.so.5.12.2"
    cpp.defines: ["QT_WEBENGINE_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtWebEngine"]
    cpp.libraryPaths: []
    Group {
        files: [Qt["webengine"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}
