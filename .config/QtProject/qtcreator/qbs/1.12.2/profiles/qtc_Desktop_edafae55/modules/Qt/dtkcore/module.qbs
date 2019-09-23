import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "dtkcore"
    Depends { name: "Qt"; submodules: ["core", "dbus", "xml"]}

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
    libNameForLinkerDebug: "Qt5dtkcore"
    libNameForLinkerRelease: "Qt5dtkcore"
    libFilePathDebug: ""
    libFilePathRelease: ""
    cpp.defines: []
    cpp.includePaths: ["/usr/include/libdtk-2.0.9/DCore"]
    cpp.libraryPaths: []
    Group {
        files: [Qt["dtkcore"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}
