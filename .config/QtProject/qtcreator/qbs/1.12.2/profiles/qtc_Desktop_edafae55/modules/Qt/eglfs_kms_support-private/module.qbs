import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "EglFsKmsSupport"
    Depends { name: "Qt"; submodules: ["core", "gui"]}

    architectures: ["x86_64"]
    targetPlatform: "linux"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: ["/usr/lib/libQt5EglFSDeviceIntegration.so.5.12.2", "/usr/lib/libQt5EventDispatcherSupport.a", "/usr/lib/libgthread-2.0.so", "/usr/lib/libglib-2.0.so", "/usr/lib/libQt5ServiceSupport.a", "/usr/lib/libQt5ThemeSupport.a", "/usr/lib/libQt5FontDatabaseSupport.a", "/usr/lib/libfontconfig.so", "/usr/lib/libfreetype.so", "/usr/lib/libz.so", "/usr/lib/libQt5FbSupport.a", "/usr/lib/libQt5EglSupport.a", "/usr/lib/libEGL.so", "/usr/lib/libXext.so", "/usr/lib/libX11.so", "/usr/lib/libm.so", "/usr/lib/libQt5InputSupport.a", "/usr/lib/libmtdev.so", "/usr/lib/libinput.so", "/usr/lib/libxkbcommon.so", "/usr/lib/libQt5PlatformCompositorSupport.a", "/usr/lib/libQt5KmsSupport.a", "dl", "/usr/lib/libGL.so", "/usr/lib/libQt5DeviceDiscoverySupport.a", "/usr/lib/libudev.so", "/usr/lib/libQt5EdidSupport.a", "/usr/lib/libQt5DBus.so.5.12.2", "/usr/lib/libdrm.so", "/usr/lib/libdl.so", "/usr/lib/libts.so"]
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5EglFsKmsSupport"
    libNameForLinkerRelease: "Qt5EglFsKmsSupport"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5EglFsKmsSupport.so.5.12.2"
    cpp.defines: ["QT_EGLFS_KMS_SUPPORT_LIB"]
    cpp.includePaths: []
    cpp.libraryPaths: []
    Group {
        files: [Qt["eglfs_kms_support-private"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}
