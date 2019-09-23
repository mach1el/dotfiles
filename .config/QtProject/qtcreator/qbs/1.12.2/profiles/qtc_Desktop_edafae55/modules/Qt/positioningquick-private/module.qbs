import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "PositioningQuick"
    Depends { name: "Qt"; submodules: ["quick-private", "positioning-private", "qml-private", "core-private", "positioningquick"]}

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
    cpp.includePaths: ["/usr/include/qt/QtPositioningQuick/5.12.2", "/usr/include/qt/QtPositioningQuick/5.12.2/QtPositioningQuick"]
    cpp.libraryPaths: []
    
}
