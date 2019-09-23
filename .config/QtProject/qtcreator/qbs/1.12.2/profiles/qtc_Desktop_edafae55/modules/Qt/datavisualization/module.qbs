import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "DataVisualization"
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
    libNameForLinkerDebug: "Qt5DataVisualization"
    libNameForLinkerRelease: "Qt5DataVisualization"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5DataVisualization.so.5.12.2"
    cpp.defines: ["QT_DATAVISUALIZATION_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtDataVisualization"]
    cpp.libraryPaths: []
    Group {
        files: [Qt["datavisualization"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}
