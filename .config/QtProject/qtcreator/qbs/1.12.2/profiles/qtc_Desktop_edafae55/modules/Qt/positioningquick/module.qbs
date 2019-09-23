import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "PositioningQuick"
    Depends { name: "Qt"; submodules: ["quick", "positioning", "qml", "core"]}

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
    libNameForLinkerDebug: "Qt5PositioningQuick"
    libNameForLinkerRelease: "Qt5PositioningQuick"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5PositioningQuick.so.5.12.2"
    cpp.defines: ["QT_POSITIONINGQUICK_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtPositioningQuick"]
    cpp.libraryPaths: []
    Group {
        files: [Qt["positioningquick"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}
