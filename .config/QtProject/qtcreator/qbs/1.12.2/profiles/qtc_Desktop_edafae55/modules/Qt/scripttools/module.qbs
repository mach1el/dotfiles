import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "ScriptTools"
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
    libNameForLinkerDebug: "Qt5ScriptTools"
    libNameForLinkerRelease: "Qt5ScriptTools"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5ScriptTools.so.5.12.2"
    cpp.defines: ["QT_SCRIPTTOOLS_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtScriptTools"]
    cpp.libraryPaths: []
    Group {
        files: [Qt["scripttools"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}
