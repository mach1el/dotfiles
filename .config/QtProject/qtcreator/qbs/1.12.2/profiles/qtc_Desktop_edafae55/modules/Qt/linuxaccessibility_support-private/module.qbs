import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "LinuxAccessibilitySupport"
    Depends { name: "Qt"; submodules: ["core-private", "dbus", "gui-private", "accessibility_support-private"]}

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
    libNameForLinkerDebug: "Qt5LinuxAccessibilitySupport"
    libNameForLinkerRelease: "Qt5LinuxAccessibilitySupport"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5LinuxAccessibilitySupport.a"
    cpp.defines: ["QT_LINUXACCESSIBILITY_SUPPORT_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtLinuxAccessibilitySupport", "/usr/include/qt/QtLinuxAccessibilitySupport/5.12.2", "/usr/include/qt/QtLinuxAccessibilitySupport/5.12.2/QtLinuxAccessibilitySupport"]
    cpp.libraryPaths: []
    isStaticLibrary: true
Group {
        files: [Qt["linuxaccessibility_support-private"].libFilePath]
        filesAreTargets: true
        fileTags: ["staticlibrary"]
    }
}
