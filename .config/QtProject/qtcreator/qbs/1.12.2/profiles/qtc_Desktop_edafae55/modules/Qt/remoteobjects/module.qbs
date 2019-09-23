import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "RemoteObjects"
    Depends { name: "Qt"; submodules: ["core", "network"]}

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
    libNameForLinkerDebug: "Qt5RemoteObjects"
    libNameForLinkerRelease: "Qt5RemoteObjects"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5RemoteObjects.so.5.12.2"
    cpp.defines: ["QT_REMOTEOBJECTS_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtRemoteObjects"]
    cpp.libraryPaths: []
    Group {
        files: [Qt["remoteobjects"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}
