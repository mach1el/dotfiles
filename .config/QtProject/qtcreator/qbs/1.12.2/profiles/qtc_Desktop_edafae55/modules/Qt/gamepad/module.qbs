import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Gamepad"
    Depends { name: "Qt"; submodules: ["core", "gui"]}

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
    libNameForLinkerDebug: "Qt5Gamepad"
    libNameForLinkerRelease: "Qt5Gamepad"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5Gamepad.so.5.12.2"
    cpp.defines: ["QT_GAMEPAD_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtGamepad"]
    cpp.libraryPaths: []
    Group {
        files: [Qt["gamepad"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}
