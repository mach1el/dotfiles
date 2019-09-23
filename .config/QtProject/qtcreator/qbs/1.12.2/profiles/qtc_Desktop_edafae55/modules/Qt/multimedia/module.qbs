import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Multimedia"
    Depends { name: "Qt"; submodules: ["core", "network", "gui"]}

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
    libNameForLinkerDebug: "Qt5Multimedia"
    libNameForLinkerRelease: "Qt5Multimedia"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5Multimedia.so.5.12.2"
    cpp.defines: ["QT_MULTIMEDIA_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtMultimedia"]
    cpp.libraryPaths: []
    Group {
        files: [Qt["multimedia"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}
