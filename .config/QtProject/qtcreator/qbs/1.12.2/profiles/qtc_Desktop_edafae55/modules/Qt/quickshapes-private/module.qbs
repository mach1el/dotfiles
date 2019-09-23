import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "QuickShapes"
    Depends { name: "Qt"; submodules: ["core", "gui-private", "qml", "quick-private"]}

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
    libNameForLinkerDebug: "Qt5QuickShapes"
    libNameForLinkerRelease: "Qt5QuickShapes"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5QuickShapes.so.5.12.2"
    cpp.defines: ["QT_QUICKSHAPES_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtQuickShapes", "/usr/include/qt/QtQuickShapes/5.12.2", "/usr/include/qt/QtQuickShapes/5.12.2/QtQuickShapes"]
    cpp.libraryPaths: []
    Group {
        files: [Qt["quickshapes-private"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}
