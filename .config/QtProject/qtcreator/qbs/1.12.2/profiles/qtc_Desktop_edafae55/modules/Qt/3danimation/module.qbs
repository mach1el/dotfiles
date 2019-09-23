import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "3DAnimation"
    Depends { name: "Qt"; submodules: ["core", "gui", "3dcore", "3drender"]}

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
    libNameForLinkerDebug: "Qt53DAnimation"
    libNameForLinkerRelease: "Qt53DAnimation"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt53DAnimation.so.5.12.2"
    cpp.defines: ["QT_3DANIMATION_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/Qt3DAnimation"]
    cpp.libraryPaths: []
    Group {
        files: [Qt["3danimation"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}
