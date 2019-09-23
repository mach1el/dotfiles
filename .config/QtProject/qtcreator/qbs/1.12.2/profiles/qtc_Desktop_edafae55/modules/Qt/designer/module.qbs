import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Designer"
    Depends { name: "Qt"; submodules: ["core", "gui", "widgets", "xml", "uiplugin"]}

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
    libNameForLinkerDebug: "Qt5Designer"
    libNameForLinkerRelease: "Qt5Designer"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5Designer.so.5.12.2"
    cpp.defines: ["QT_DESIGNER_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtDesigner"]
    cpp.libraryPaths: []
    Group {
        files: [Qt["designer"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}
