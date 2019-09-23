import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Script"
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
    libNameForLinkerDebug: "Qt5Script"
    libNameForLinkerRelease: "Qt5Script"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5Script.so.5.12.2"
    cpp.defines: ["QT_SCRIPT_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtScript"]
    cpp.libraryPaths: []
    Group {
        files: [Qt["script"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}
