import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Gamepad"
    Depends { name: "Qt"; submodules: ["core-private", "gamepad"]}

    architectures: ["x86_64"]
    targetPlatform: "linux"
    hasLibrary: false
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
    libNameForLinkerDebug: ""
    libNameForLinkerRelease: ""
    libFilePathDebug: ""
    libFilePathRelease: ""
    cpp.defines: []
    cpp.includePaths: ["/usr/include/qt/QtGamepad/5.12.2", "/usr/include/qt/QtGamepad/5.12.2/QtGamepad"]
    cpp.libraryPaths: []
    
}
