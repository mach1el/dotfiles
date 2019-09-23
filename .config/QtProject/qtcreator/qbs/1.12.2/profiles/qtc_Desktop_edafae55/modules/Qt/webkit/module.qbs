import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "WebKit"
    Depends { name: "Qt"; submodules: ["core", "gui", "network"]}

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
    libNameForLinkerDebug: "Qt5WebKit"
    libNameForLinkerRelease: "Qt5WebKit"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib//libQt5WebKit.so"
    cpp.defines: ["QT_WEBKIT_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtWebKit"]
    cpp.libraryPaths: []
    Group {
        files: [Qt["webkit"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}
