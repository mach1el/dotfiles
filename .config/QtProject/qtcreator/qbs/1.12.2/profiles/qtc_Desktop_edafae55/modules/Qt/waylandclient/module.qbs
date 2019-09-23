import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "WaylandClient"
    Depends { name: "Qt"; submodules: ["core", "gui"]}

    architectures: ["x86_64"]
    targetPlatform: "linux"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: ["/usr/lib/libwayland-cursor.so", "/usr/lib/libwayland-client.so"]
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5WaylandClient"
    libNameForLinkerRelease: "Qt5WaylandClient"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5WaylandClient.so.5.12.2"
    cpp.defines: ["QT_WAYLANDCLIENT_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtWaylandClient"]
    cpp.libraryPaths: []
    Group {
        files: [Qt["waylandclient"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}
