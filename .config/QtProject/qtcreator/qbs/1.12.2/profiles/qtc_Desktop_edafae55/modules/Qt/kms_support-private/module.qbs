import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "KmsSupport"
    Depends { name: "Qt"; submodules: ["core-private", "gui-private"]}

    architectures: ["x86_64"]
    targetPlatform: "linux"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: ["/usr/lib/libdrm.so", "dl", "/usr/lib/libGL.so"]
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5KmsSupport"
    libNameForLinkerRelease: "Qt5KmsSupport"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5KmsSupport.a"
    cpp.defines: ["QT_KMS_SUPPORT_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtKmsSupport", "/usr/include/qt/QtKmsSupport/5.12.2", "/usr/include/qt/QtKmsSupport/5.12.2/QtKmsSupport"]
    cpp.libraryPaths: []
    isStaticLibrary: true
Group {
        files: [Qt["kms_support-private"].libFilePath]
        filesAreTargets: true
        fileTags: ["staticlibrary"]
    }
}
