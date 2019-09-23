import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "AccessibilitySupport"
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
    libNameForLinkerDebug: "Qt5AccessibilitySupport"
    libNameForLinkerRelease: "Qt5AccessibilitySupport"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5AccessibilitySupport.a"
    cpp.defines: ["QT_ACCESSIBILITY_SUPPORT_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtAccessibilitySupport", "/usr/include/qt/QtAccessibilitySupport/5.12.2", "/usr/include/qt/QtAccessibilitySupport/5.12.2/QtAccessibilitySupport"]
    cpp.libraryPaths: []
    isStaticLibrary: true
Group {
        files: [Qt["accessibility_support-private"].libFilePath]
        filesAreTargets: true
        fileTags: ["staticlibrary"]
    }
}
