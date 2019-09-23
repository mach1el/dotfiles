import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "WebKitWidgets"
    Depends { name: "Qt"; submodules: ["core", "gui", "network", "widgets", "webkit"]}

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
    libNameForLinkerDebug: "Qt5WebKitWidgets"
    libNameForLinkerRelease: "Qt5WebKitWidgets"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib//libQt5WebKitWidgets.so"
    cpp.defines: ["QT_WEBKITWIDGETS_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtWebKitWidgets"]
    cpp.libraryPaths: []
    Group {
        files: [Qt["webkitwidgets"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}
