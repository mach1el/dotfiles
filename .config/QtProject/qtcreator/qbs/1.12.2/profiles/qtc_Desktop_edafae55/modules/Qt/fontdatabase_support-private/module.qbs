import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "FontDatabaseSupport"
    Depends { name: "Qt"; submodules: ["core-private", "gui-private"]}

    architectures: ["x86_64"]
    targetPlatform: "linux"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: ["/usr/lib/libGL.so", "/usr/lib/libfontconfig.so", "/usr/lib/libfreetype.so", "/usr/lib/libz.so"]
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5FontDatabaseSupport"
    libNameForLinkerRelease: "Qt5FontDatabaseSupport"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5FontDatabaseSupport.a"
    cpp.defines: ["QT_FONTDATABASE_SUPPORT_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtFontDatabaseSupport", "/usr/include/qt/QtFontDatabaseSupport/5.12.2", "/usr/include/qt/QtFontDatabaseSupport/5.12.2/QtFontDatabaseSupport"]
    cpp.libraryPaths: []
    isStaticLibrary: true
Group {
        files: [Qt["fontdatabase_support-private"].libFilePath]
        filesAreTargets: true
        fileTags: ["staticlibrary"]
    }
}
