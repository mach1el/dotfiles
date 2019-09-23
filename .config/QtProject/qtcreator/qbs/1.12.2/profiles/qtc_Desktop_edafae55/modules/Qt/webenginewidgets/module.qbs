import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "WebEngineWidgets"
    Depends { name: "Qt"; submodules: ["core", "gui", "webenginecore", "widgets", "network", "quick", "printsupport"]}

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
    libNameForLinkerDebug: "Qt5WebEngineWidgets"
    libNameForLinkerRelease: "Qt5WebEngineWidgets"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5WebEngineWidgets.so.5.12.2"
    cpp.defines: ["QT_WEBENGINEWIDGETS_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtWebEngineWidgets"]
    cpp.libraryPaths: []
    Group {
        files: [Qt["webenginewidgets"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}
