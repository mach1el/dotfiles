import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "MultimediaQuick"
    Depends { name: "Qt"; submodules: ["core", "quick", "multimedia-private"]}

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
    libNameForLinkerDebug: "Qt5MultimediaQuick"
    libNameForLinkerRelease: "Qt5MultimediaQuick"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5MultimediaQuick.so.5.12.2"
    cpp.defines: ["QT_QTMULTIMEDIAQUICKTOOLS_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtMultimediaQuick", "/usr/include/qt/QtMultimediaQuick/5.12.2", "/usr/include/qt/QtMultimediaQuick/5.12.2/QtMultimediaQuick"]
    cpp.libraryPaths: []
    Group {
        files: [Qt["qtmultimediaquicktools-private"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}
