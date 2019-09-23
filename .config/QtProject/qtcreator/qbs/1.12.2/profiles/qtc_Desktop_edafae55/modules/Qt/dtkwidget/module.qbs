import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "dtkwidget"
    Depends { name: "Qt"; submodules: ["core", "gui", "dtkcore", "network", "concurrent", "multimedia", "multimediawidgets", "widgets", "widgets-private", "gui-private", "x11extras", "dbus"]}

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
    libNameForLinkerDebug: "Qt5dtkwidget"
    libNameForLinkerRelease: "Qt5dtkwidget"
    libFilePathDebug: ""
    libFilePathRelease: ""
    cpp.defines: []
    cpp.includePaths: ["/usr/include/libdtk-2.0.9/DCore/../DWidget"]
    cpp.libraryPaths: []
    Group {
        files: [Qt["dtkwidget"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}
