import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "QmlDevTools"
    Depends { name: "Qt"; submodules: ["core-private"]}

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
    libNameForLinkerDebug: "Qt5QmlDevTools"
    libNameForLinkerRelease: "Qt5QmlDevTools"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5QmlDevTools.a"
    cpp.defines: ["QT_QMLDEVTOOLS_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtQml", "/usr/include/qt/QtQml/5.12.2", "/usr/include/qt/QtQml/5.12.2/QtQml"]
    cpp.libraryPaths: []
    isStaticLibrary: true
Group {
        files: [Qt["qmldevtools-private"].libFilePath]
        filesAreTargets: true
        fileTags: ["staticlibrary"]
    }
}
