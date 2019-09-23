import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "SerialPort"
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
    libNameForLinkerDebug: "Qt5SerialPort"
    libNameForLinkerRelease: "Qt5SerialPort"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5SerialPort.so.5.12.2"
    cpp.defines: ["QT_SERIALPORT_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtSerialPort"]
    cpp.libraryPaths: []
    Group {
        files: [Qt["serialport"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}
