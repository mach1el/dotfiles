import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "X11Extras"
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
    libNameForLinkerDebug: "Qt5X11Extras"
    libNameForLinkerRelease: "Qt5X11Extras"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5X11Extras.so.5.12.2"
    cpp.defines: ["QT_X11EXTRAS_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtX11Extras"]
    cpp.libraryPaths: []
    Group {
        files: [Qt["x11extras"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}
