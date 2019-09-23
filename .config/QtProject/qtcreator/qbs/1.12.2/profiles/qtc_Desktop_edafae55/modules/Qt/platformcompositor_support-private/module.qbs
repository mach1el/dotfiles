import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "PlatformCompositorSupport"
    Depends { name: "Qt"; submodules: ["core-private", "gui-private"]}

    architectures: ["x86_64"]
    targetPlatform: "linux"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: ["/usr/lib/libGL.so"]
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5PlatformCompositorSupport"
    libNameForLinkerRelease: "Qt5PlatformCompositorSupport"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5PlatformCompositorSupport.a"
    cpp.defines: ["QT_PLATFORMCOMPOSITOR_SUPPORT_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtPlatformCompositorSupport", "/usr/include/qt/QtPlatformCompositorSupport/5.12.2", "/usr/include/qt/QtPlatformCompositorSupport/5.12.2/QtPlatformCompositorSupport"]
    cpp.libraryPaths: []
    isStaticLibrary: true
Group {
        files: [Qt["platformcompositor_support-private"].libFilePath]
        filesAreTargets: true
        fileTags: ["staticlibrary"]
    }
}
