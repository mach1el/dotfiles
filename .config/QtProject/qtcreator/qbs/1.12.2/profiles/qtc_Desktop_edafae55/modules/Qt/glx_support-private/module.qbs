import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "GlxSupport"
    Depends { name: "Qt"; submodules: ["core-private", "gui-private"]}

    architectures: ["x86_64"]
    targetPlatform: "linux"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: ["/usr/lib/libGL.so", "/usr/lib/libXext.so", "/usr/lib/libX11.so", "/usr/lib/libm.so"]
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5GlxSupport"
    libNameForLinkerRelease: "Qt5GlxSupport"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5GlxSupport.a"
    cpp.defines: ["QT_GLX_SUPPORT_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtGlxSupport", "/usr/include/qt/QtGlxSupport/5.12.2", "/usr/include/qt/QtGlxSupport/5.12.2/QtGlxSupport"]
    cpp.libraryPaths: []
    isStaticLibrary: true
Group {
        files: [Qt["glx_support-private"].libFilePath]
        filesAreTargets: true
        fileTags: ["staticlibrary"]
    }
}
