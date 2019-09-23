import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "3DCore"
    Depends { name: "Qt"; submodules: ["core", "gui", "network"]}

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
    libNameForLinkerDebug: "Qt53DCore"
    libNameForLinkerRelease: "Qt53DCore"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt53DCore.so.5.12.2"
    cpp.defines: ["QT_3DCORE_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/Qt3DCore"]
    cpp.libraryPaths: []
    Group {
        files: [Qt["3dcore"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}
