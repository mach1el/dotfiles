import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "OpenGLExtensions"
    Depends { name: "Qt"; submodules: ["core", "gui"]}

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
    libNameForLinkerDebug: "Qt5OpenGLExtensions"
    libNameForLinkerRelease: "Qt5OpenGLExtensions"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5OpenGLExtensions.a"
    cpp.defines: ["QT_OPENGLEXTENSIONS_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtOpenGLExtensions"]
    cpp.libraryPaths: []
    isStaticLibrary: true
Group {
        files: [Qt["openglextensions"].libFilePath]
        filesAreTargets: true
        fileTags: ["staticlibrary"]
    }
}
