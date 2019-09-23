import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "3DRender"
    Depends { name: "Qt"; submodules: ["core", "gui", "3dcore"]}

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
    libNameForLinkerDebug: "Qt53DRender"
    libNameForLinkerRelease: "Qt53DRender"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt53DRender.so.5.12.2"
    cpp.defines: ["QT_3DRENDER_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/Qt3DRender"]
    cpp.libraryPaths: []
    Group {
        files: [Qt["3drender"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}
