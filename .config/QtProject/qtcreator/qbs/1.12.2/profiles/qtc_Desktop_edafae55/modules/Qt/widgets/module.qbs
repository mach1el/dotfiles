import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Widgets"
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
    libNameForLinkerDebug: "Qt5Widgets"
    libNameForLinkerRelease: "Qt5Widgets"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5Widgets.so.5.12.2"
    cpp.defines: ["QT_WIDGETS_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtWidgets"]
    cpp.libraryPaths: []
    Group {
        files: [Qt["widgets"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}
