import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "XcbQpa"
    Depends { name: "Qt"; submodules: ["core", "gui", "core-private", "gui-private", "service_support-private", "theme_support-private", "fontdatabase_support-private", "edid_support-private", "linuxaccessibility_support-private", "vulkan_support-private"]}

    architectures: ["x86_64"]
    targetPlatform: "linux"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: ["/usr/lib/libX11-xcb.so", "/usr/lib/libxcb-xinput.so", "/usr/lib/libxcb-icccm.so", "/usr/lib/libxcb-image.so", "/usr/lib/libxcb-shm.so", "/usr/lib/libxcb-keysyms.so", "/usr/lib/libxcb-randr.so", "/usr/lib/libxcb-render-util.so", "/usr/lib/libxcb-render.so", "/usr/lib/libxcb-shape.so", "/usr/lib/libxcb-sync.so", "/usr/lib/libxcb-xfixes.so", "/usr/lib/libxcb-xinerama.so", "/usr/lib/libxcb-xkb.so", "/usr/lib/libxcb.so", "/usr/lib/libXrender.so", "/usr/lib/libXext.so", "/usr/lib/libX11.so", "/usr/lib/libm.so", "/usr/lib/libSM.so", "/usr/lib/libICE.so", "/usr/lib/libxkbcommon-x11.so", "/usr/lib/libxkbcommon.so", "/usr/lib/libdl.so"]
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5XcbQpa"
    libNameForLinkerRelease: "Qt5XcbQpa"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5XcbQpa.so.5.12.2"
    cpp.defines: ["QT_XCB_QPA_LIB_LIB"]
    cpp.includePaths: []
    cpp.libraryPaths: []
    Group {
        files: [Qt["xcb_qpa_lib-private"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}
