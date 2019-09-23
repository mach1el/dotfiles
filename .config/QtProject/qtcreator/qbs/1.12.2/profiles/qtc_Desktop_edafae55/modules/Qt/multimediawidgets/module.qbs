import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "MultimediaWidgets"
    Depends { name: "Qt"; submodules: ["core", "gui", "multimedia", "widgets"]}

    architectures: ["x86_64"]
    targetPlatform: "linux"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: ["/usr/lib/libpulse-mainloop-glib.so", "/usr/lib/libpulse.so", "/usr/lib/libglib-2.0.so"]
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5MultimediaWidgets"
    libNameForLinkerRelease: "Qt5MultimediaWidgets"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5MultimediaWidgets.so.5.12.2"
    cpp.defines: ["QT_MULTIMEDIAWIDGETS_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtMultimediaWidgets"]
    cpp.libraryPaths: []
    Group {
        files: [Qt["multimediawidgets"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}
