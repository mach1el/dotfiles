import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "3DLogic"
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
    libNameForLinkerDebug: "Qt53DLogic"
    libNameForLinkerRelease: "Qt53DLogic"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt53DLogic.so.5.12.2"
    cpp.defines: ["QT_3DLOGIC_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/Qt3DLogic"]
    cpp.libraryPaths: []
    Group {
        files: [Qt["3dlogic"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}
