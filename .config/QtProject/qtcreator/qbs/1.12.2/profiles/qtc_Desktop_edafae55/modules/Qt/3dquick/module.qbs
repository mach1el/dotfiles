import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "3DQuick"
    Depends { name: "Qt"; submodules: ["core", "gui", "qml", "quick", "3dcore"]}

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
    libNameForLinkerDebug: "Qt53DQuick"
    libNameForLinkerRelease: "Qt53DQuick"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt53DQuick.so.5.12.2"
    cpp.defines: ["QT_3DQUICK_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/Qt3DQuick"]
    cpp.libraryPaths: []
    Group {
        files: [Qt["3dquick"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}
