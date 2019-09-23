import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "UiTools"
    Depends { name: "Qt"; submodules: ["core", "gui", "widgets"]}

    architectures: ["x86_64"]
    targetPlatform: "linux"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: ["/usr/lib/libGL.so"]
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5UiTools"
    libNameForLinkerRelease: "Qt5UiTools"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5UiTools.a"
    cpp.defines: ["QT_UITOOLS_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtUiTools"]
    cpp.libraryPaths: []
    isStaticLibrary: true
Group {
        files: [Qt["uitools"].libFilePath]
        filesAreTargets: true
        fileTags: ["staticlibrary"]
    }
}
