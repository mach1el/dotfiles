import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "3DQuickAnimation"
    Depends { name: "Qt"; submodules: ["core", "gui", "qml", "3dcore", "3drender", "3danimation", "3dquick"]}

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
    libNameForLinkerDebug: "Qt53DQuickAnimation"
    libNameForLinkerRelease: "Qt53DQuickAnimation"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt53DQuickAnimation.so.5.12.2"
    cpp.defines: ["QT_3DQUICKANIMATION_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/Qt3DQuickAnimation"]
    cpp.libraryPaths: []
    Group {
        files: [Qt["3dquickanimation"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}
