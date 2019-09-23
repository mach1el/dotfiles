import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Bootstrap"
    Depends { name: "Qt"; submodules: []}

    architectures: ["x86_64"]
    targetPlatform: "linux"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: ["pthread", "/usr/lib/libz.so"]
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5Bootstrap"
    libNameForLinkerRelease: "Qt5Bootstrap"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5Bootstrap.a"
    cpp.defines: ["QT_BOOTSTRAP_LIB", "QT_VERSION_STR=\\'\\\"5.12.2\\\"\\'", "QT_VERSION_MAJOR=5", "QT_VERSION_MINOR=12", "QT_VERSION_PATCH=2", "QT_BOOTSTRAPPED", "QT_NO_CAST_TO_ASCII"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtCore", "/usr/include/qt/QtCore/5.12.2", "/usr/include/qt/QtCore/5.12.2/QtCore", "/usr/include/qt/QtXml", "/usr/include/qt/QtXml/5.12.2", "/usr/include/qt/QtXml/5.12.2/QtXml"]
    cpp.libraryPaths: []
    isStaticLibrary: true
Group {
        files: [Qt["bootstrap-private"].libFilePath]
        filesAreTargets: true
        fileTags: ["staticlibrary"]
    }
}
