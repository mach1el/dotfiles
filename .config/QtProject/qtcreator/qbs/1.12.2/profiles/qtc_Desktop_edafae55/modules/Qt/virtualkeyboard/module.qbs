import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "VirtualKeyboard"
    Depends { name: "Qt"; submodules: ["core", "gui", "qml", "quick"]}

    architectures: ["x86_64"]
    targetPlatform: "linux"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: ["xcb", "xcb-xfixes"]
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5VirtualKeyboard"
    libNameForLinkerRelease: "Qt5VirtualKeyboard"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5VirtualKeyboard.so.5.12.2"
    cpp.defines: ["QT_VIRTUALKEYBOARD_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtVirtualKeyboard"]
    cpp.libraryPaths: []
    Group {
        files: [Qt["virtualkeyboard"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}
