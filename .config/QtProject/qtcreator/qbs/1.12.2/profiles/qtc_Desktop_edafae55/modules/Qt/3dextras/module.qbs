import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "3DExtras"
    Depends { name: "Qt"; submodules: ["core", "gui", "3dcore", "3drender", "3dinput", "3dlogic"]}

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
    libNameForLinkerDebug: "Qt53DExtras"
    libNameForLinkerRelease: "Qt53DExtras"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt53DExtras.so.5.12.2"
    cpp.defines: ["QT_3DEXTRAS_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/Qt3DExtras"]
    cpp.libraryPaths: []
    Group {
        files: [Qt["3dextras"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}
