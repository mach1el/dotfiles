import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "SerialBus"
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
    libNameForLinkerDebug: "Qt5SerialBus"
    libNameForLinkerRelease: "Qt5SerialBus"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5SerialBus.so.5.12.2"
    cpp.defines: ["QT_SERIALBUS_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtSerialBus"]
    cpp.libraryPaths: []
    Group {
        files: [Qt["serialbus"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}
