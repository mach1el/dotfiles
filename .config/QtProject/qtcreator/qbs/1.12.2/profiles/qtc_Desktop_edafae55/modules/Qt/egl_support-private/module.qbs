import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "EglSupport"
    Depends { name: "Qt"; submodules: ["core-private", "gui-private"]}

    architectures: ["x86_64"]
    targetPlatform: "linux"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: ["/usr/lib/libdl.so", "/usr/lib/libEGL.so", "/usr/lib/libGL.so", "/usr/lib/libXext.so", "/usr/lib/libX11.so", "/usr/lib/libm.so"]
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5EglSupport"
    libNameForLinkerRelease: "Qt5EglSupport"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5EglSupport.a"
    cpp.defines: ["QT_EGL_SUPPORT_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtEglSupport", "/usr/include/qt/QtEglSupport/5.12.2", "/usr/include/qt/QtEglSupport/5.12.2/QtEglSupport"]
    cpp.libraryPaths: []
    isStaticLibrary: true
Group {
        files: [Qt["egl_support-private"].libFilePath]
        filesAreTargets: true
        fileTags: ["staticlibrary"]
    }
}
