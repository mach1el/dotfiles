import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Svg"
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
    libNameForLinkerDebug: "Qt5Svg"
    libNameForLinkerRelease: "Qt5Svg"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5Svg.so.5.12.2"
    cpp.defines: ["QT_SVG_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtSvg"]
    cpp.libraryPaths: []
    Group {
        files: [Qt["svg"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}
