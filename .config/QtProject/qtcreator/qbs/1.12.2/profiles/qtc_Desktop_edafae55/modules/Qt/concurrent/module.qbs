import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Concurrent"
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
    libNameForLinkerDebug: "Qt5Concurrent"
    libNameForLinkerRelease: "Qt5Concurrent"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5Concurrent.so.5.12.2"
    cpp.defines: ["QT_CONCURRENT_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtConcurrent"]
    cpp.libraryPaths: []
    Group {
        files: [Qt["concurrent"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}
