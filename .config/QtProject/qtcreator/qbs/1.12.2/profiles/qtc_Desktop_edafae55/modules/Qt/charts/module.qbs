import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Charts"
    Depends { name: "Qt"; submodules: ["core", "gui", "widgets"]}

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
    libNameForLinkerDebug: "Qt5Charts"
    libNameForLinkerRelease: "Qt5Charts"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5Charts.so.5.12.2"
    cpp.defines: ["QT_CHARTS_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtCharts"]
    cpp.libraryPaths: []
    Group {
        files: [Qt["charts"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}
