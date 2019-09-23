import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "3DQuickExtras"
    Depends { name: "Qt"; submodules: ["core", "gui", "qml", "3dcore", "3dinput", "3dquick", "3drender", "3dlogic", "3dextras"]}

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
    libNameForLinkerDebug: "Qt53DQuickExtras"
    libNameForLinkerRelease: "Qt53DQuickExtras"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt53DQuickExtras.so.5.12.2"
    cpp.defines: ["QT_3DQUICKEXTRAS_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/Qt3DQuickExtras"]
    cpp.libraryPaths: []
    Group {
        files: [Qt["3dquickextras"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}
