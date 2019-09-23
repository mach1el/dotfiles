import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Xml"
    Depends { name: "Qt"; submodules: ["core"]}

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
    libNameForLinkerDebug: "Qt5Xml"
    libNameForLinkerRelease: "Qt5Xml"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5Xml.so.5.12.2"
    cpp.defines: ["QT_XML_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtXml"]
    cpp.libraryPaths: []
    Group {
        files: [Qt["xml"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}
