import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Bluetooth"
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
    libNameForLinkerDebug: "Qt5Bluetooth"
    libNameForLinkerRelease: "Qt5Bluetooth"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5Bluetooth.so.5.12.2"
    cpp.defines: ["QT_BLUETOOTH_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtBluetooth"]
    cpp.libraryPaths: []
    Group {
        files: [Qt["bluetooth"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}
