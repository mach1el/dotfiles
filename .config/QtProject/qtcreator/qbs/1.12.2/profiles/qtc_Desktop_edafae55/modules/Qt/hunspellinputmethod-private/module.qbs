import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "HunspellInputMethod"
    Depends { name: "Qt"; submodules: ["core", "gui", "virtualkeyboard-private"]}

    architectures: ["x86_64"]
    targetPlatform: "linux"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: ["hunspell-1.7"]
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5HunspellInputMethod"
    libNameForLinkerRelease: "Qt5HunspellInputMethod"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5HunspellInputMethod.so.5.12.2"
    cpp.defines: ["QT_HUNSPELLINPUTMETHOD_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtHunspellInputMethod", "/usr/include/qt/QtHunspellInputMethod/5.12.2", "/usr/include/qt/QtHunspellInputMethod/5.12.2/QtHunspellInputMethod"]
    cpp.libraryPaths: []
    Group {
        files: [Qt["hunspellinputmethod-private"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}
