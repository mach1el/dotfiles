import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "3DInput"
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
    libNameForLinkerDebug: "Qt53DInput"
    libNameForLinkerRelease: "Qt53DInput"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt53DInput.so.5.12.2"
    cpp.defines: ["QT_3DINPUT_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/Qt3DInput"]
    cpp.libraryPaths: []
    Group {
        files: [Qt["3dinput"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}
