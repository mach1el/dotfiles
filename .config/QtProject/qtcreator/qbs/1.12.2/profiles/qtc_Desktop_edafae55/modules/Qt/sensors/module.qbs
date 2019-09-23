import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Sensors"
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
    libNameForLinkerDebug: "Qt5Sensors"
    libNameForLinkerRelease: "Qt5Sensors"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5Sensors.so.5.12.2"
    cpp.defines: ["QT_SENSORS_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtSensors"]
    cpp.libraryPaths: []
    Group {
        files: [Qt["sensors"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}
