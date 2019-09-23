import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "DesignerComponents"
    Depends { name: "Qt"; submodules: ["core", "gui-private", "widgets-private", "designer-private", "xml"]}

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
    libNameForLinkerDebug: "Qt5DesignerComponents"
    libNameForLinkerRelease: "Qt5DesignerComponents"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5DesignerComponents.so.5.12.2"
    cpp.defines: ["QT_DESIGNERCOMPONENTS_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtDesignerComponents", "/usr/include/qt/QtDesignerComponents/5.12.2", "/usr/include/qt/QtDesignerComponents/5.12.2/QtDesignerComponents"]
    cpp.libraryPaths: []
    Group {
        files: [Qt["designercomponents-private"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}
