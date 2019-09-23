import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "WebView"
    Depends { name: "Qt"; submodules: ["core", "gui"]}

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
    libNameForLinkerDebug: "Qt5WebView"
    libNameForLinkerRelease: "Qt5WebView"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5WebView.so.5.12.2"
    cpp.defines: ["QT_WEBVIEW_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtWebView"]
    cpp.libraryPaths: []
    Group {
        files: [Qt["webview"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}
