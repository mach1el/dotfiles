import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "InputSupport"
    Depends { name: "Qt"; submodules: ["core-private", "gui-private", "devicediscovery_support-private"]}

    architectures: ["x86_64"]
    targetPlatform: "linux"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: ["/usr/lib/libts.so", "/usr/lib/libGL.so", "/usr/lib/libmtdev.so", "/usr/lib/libinput.so", "/usr/lib/libxkbcommon.so"]
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5InputSupport"
    libNameForLinkerRelease: "Qt5InputSupport"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5InputSupport.a"
    cpp.defines: ["QT_INPUT_SUPPORT_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtInputSupport", "/usr/include/qt/QtInputSupport/5.12.2", "/usr/include/qt/QtInputSupport/5.12.2/QtInputSupport"]
    cpp.libraryPaths: []
    isStaticLibrary: true
Group {
        files: [Qt["input_support-private"].libFilePath]
        filesAreTargets: true
        fileTags: ["staticlibrary"]
    }
}
