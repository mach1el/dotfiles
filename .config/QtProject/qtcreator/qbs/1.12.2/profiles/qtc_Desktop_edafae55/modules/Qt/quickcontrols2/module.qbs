import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "QuickControls2"
    Depends { name: "Qt"; submodules: ["core", "gui", "quick"]}

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
    libNameForLinkerDebug: "Qt5QuickControls2"
    libNameForLinkerRelease: "Qt5QuickControls2"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5QuickControls2.so.5.12.2"
    cpp.defines: ["QT_QUICKCONTROLS2_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtQuickControls2"]
    cpp.libraryPaths: []
    Group {
        files: [Qt["quickcontrols2"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}
