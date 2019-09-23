import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Nfc"
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
    libNameForLinkerDebug: "Qt5Nfc"
    libNameForLinkerRelease: "Qt5Nfc"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5Nfc.so.5.12.2"
    cpp.defines: ["QT_NFC_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtNfc"]
    cpp.libraryPaths: []
    Group {
        files: [Qt["nfc"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}
