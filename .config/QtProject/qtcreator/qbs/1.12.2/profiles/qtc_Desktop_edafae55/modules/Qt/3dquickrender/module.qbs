import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "3DQuickRender"
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
    libNameForLinkerDebug: "Qt53DQuickRender"
    libNameForLinkerRelease: "Qt53DQuickRender"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt53DQuickRender.so.5.12.2"
    cpp.defines: ["QT_3DQUICKRENDER_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/Qt3DQuickRender"]
    cpp.libraryPaths: []
    Group {
        files: [Qt["3dquickrender"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}
