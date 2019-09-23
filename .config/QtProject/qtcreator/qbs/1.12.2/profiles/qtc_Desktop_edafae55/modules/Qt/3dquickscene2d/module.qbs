import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "3DQuickScene2D"
    Depends { name: "Qt"; submodules: ["core", "gui", "qml", "3dcore", "3drender", "3dquick"]}

    architectures: ["x86_64"]
    targetPlatform: "linux"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: ["/usr/lib/libQt5Concurrent.so.5.12.2"]
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt53DQuickScene2D"
    libNameForLinkerRelease: "Qt53DQuickScene2D"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt53DQuickScene2D.so.5.12.2"
    cpp.defines: ["QT_3DQUICKSCENE2D_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/Qt3DQuickScene2D"]
    cpp.libraryPaths: []
    Group {
        files: [Qt["3dquickscene2d"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}
