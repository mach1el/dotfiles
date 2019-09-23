import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "dtkwm"
    Depends { name: "Qt"; submodules: ["core", "gui", "x11extras", "dbus", "dtkcore", "widgets"]}

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
    libNameForLinkerDebug: "Qt5dtkwm"
    libNameForLinkerRelease: "Qt5dtkwm"
    libFilePathDebug: ""
    libFilePathRelease: ""
    cpp.defines: []
    cpp.includePaths: ["/usr/include/libdtk-2.0.9/DCore/../DWm"]
    cpp.libraryPaths: []
    Group {
        files: [Qt["dtkwm"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}
