import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Location"
    Depends { name: "Qt"; submodules: ["core", "positioning", "gui", "quick", "network", "positioningquick", "qml"]}

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
    libNameForLinkerDebug: "Qt5Location"
    libNameForLinkerRelease: "Qt5Location"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5Location.so.5.12.2"
    cpp.defines: ["QT_LOCATION_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtLocation"]
    cpp.libraryPaths: []
    Group {
        files: [Qt["location"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}
