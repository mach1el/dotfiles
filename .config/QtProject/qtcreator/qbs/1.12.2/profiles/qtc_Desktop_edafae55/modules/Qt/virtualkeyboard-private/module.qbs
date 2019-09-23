import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "VirtualKeyboard"
    Depends { name: "Qt"; submodules: ["gui-private", "core-private", "virtualkeyboard"]}

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
    cpp.includePaths: ["/usr/include/qt/QtVirtualKeyboard/5.12.2", "/usr/include/qt/QtVirtualKeyboard/5.12.2/QtVirtualKeyboard"]
    cpp.libraryPaths: []
    
}
