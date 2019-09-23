import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Purchasing"
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
    libNameForLinkerDebug: "Qt5Purchasing"
    libNameForLinkerRelease: "Qt5Purchasing"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5Purchasing.so.5.12.2"
    cpp.defines: ["QT_PURCHASING_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtPurchasing"]
    cpp.libraryPaths: []
    Group {
        files: [Qt["purchasing"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}
