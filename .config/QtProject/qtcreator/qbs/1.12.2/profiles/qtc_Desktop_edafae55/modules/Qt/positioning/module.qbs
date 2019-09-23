import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Positioning"
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
    libNameForLinkerDebug: "Qt5Positioning"
    libNameForLinkerRelease: "Qt5Positioning"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5Positioning.so.5.12.2"
    cpp.defines: ["QT_POSITIONING_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtPositioning"]
    cpp.libraryPaths: []
    Group {
        files: [Qt["positioning"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}
