import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Sql"
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
    libNameForLinkerDebug: "Qt5Sql"
    libNameForLinkerRelease: "Qt5Sql"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5Sql.so.5.12.2"
    cpp.defines: ["QT_SQL_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtSql"]
    cpp.libraryPaths: []
    Group {
        files: [Qt["sql"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}
