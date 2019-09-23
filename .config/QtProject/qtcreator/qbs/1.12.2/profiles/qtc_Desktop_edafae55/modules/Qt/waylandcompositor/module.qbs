import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "WaylandCompositor"
    Depends { name: "Qt"; submodules: ["core", "gui", "quick", "qml"]}

    architectures: ["x86_64"]
    targetPlatform: "linux"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: ["/usr/lib/libwayland-server.so", "/usr/lib/libxkbcommon.so"]
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5WaylandCompositor"
    libNameForLinkerRelease: "Qt5WaylandCompositor"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5WaylandCompositor.so.5.12.2"
    cpp.defines: ["QT_WAYLANDCOMPOSITOR_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtWaylandCompositor"]
    cpp.libraryPaths: []
    Group {
        files: [Qt["waylandcompositor"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}
