import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "FbSupport"
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
    libNameForLinkerDebug: "Qt5FbSupport"
    libNameForLinkerRelease: "Qt5FbSupport"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5FbSupport.a"
    cpp.defines: ["QT_FB_SUPPORT_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtFbSupport", "/usr/include/qt/QtFbSupport/5.12.2", "/usr/include/qt/QtFbSupport/5.12.2/QtFbSupport"]
    cpp.libraryPaths: []
    isStaticLibrary: true
Group {
        files: [Qt["fb_support-private"].libFilePath]
        filesAreTargets: true
        fileTags: ["staticlibrary"]
    }
}
