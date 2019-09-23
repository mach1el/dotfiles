import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "3DQuickInput"
    Depends { name: "Qt"; submodules: ["core", "gui", "qml", "3dcore", "3dinput", "3dquick"]}

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
    libNameForLinkerDebug: "Qt53DQuickInput"
    libNameForLinkerRelease: "Qt53DQuickInput"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt53DQuickInput.so.5.12.2"
    cpp.defines: ["QT_3DQUICKINPUT_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/Qt3DQuickInput"]
    cpp.libraryPaths: []
    Group {
        files: [Qt["3dquickinput"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}
