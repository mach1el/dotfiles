import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "QuickParticles"
    Depends { name: "Qt"; submodules: ["core-private", "gui-private", "qml-private", "quick-private"]}

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
    libNameForLinkerDebug: "Qt5QuickParticles"
    libNameForLinkerRelease: "Qt5QuickParticles"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5QuickParticles.so.5.12.2"
    cpp.defines: ["QT_QUICKPARTICLES_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtQuickParticles", "/usr/include/qt/QtQuickParticles/5.12.2", "/usr/include/qt/QtQuickParticles/5.12.2/QtQuickParticles"]
    cpp.libraryPaths: []
    Group {
        files: [Qt["quickparticles-private"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}
