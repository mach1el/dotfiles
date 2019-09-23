import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "QuickTemplates2"
    Depends { name: "Qt"; submodules: ["core", "gui", "quick"]}

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
    libNameForLinkerDebug: "Qt5QuickTemplates2"
    libNameForLinkerRelease: "Qt5QuickTemplates2"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5QuickTemplates2.so.5.12.2"
    cpp.defines: ["QT_QUICKTEMPLATES2_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtQuickTemplates2", "/usr/include/qt/QtQuickTemplates2/5.12.2", "/usr/include/qt/QtQuickTemplates2/5.12.2/QtQuickTemplates2"]
    cpp.libraryPaths: []
    Group {
        files: [Qt["quicktemplates2-private"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}
