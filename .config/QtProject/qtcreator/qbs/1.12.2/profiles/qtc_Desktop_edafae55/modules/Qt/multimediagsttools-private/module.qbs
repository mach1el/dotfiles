import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "MultimediaGstTools"
    Depends { name: "Qt"; submodules: ["core-private", "multimedia-private", "gui-private", "multimediawidgets"]}

    architectures: ["x86_64"]
    targetPlatform: "linux"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: ["/usr/lib/libasound.so", "/usr/lib/libgstapp-1.0.so", "/usr/lib/libgstaudio-1.0.so", "/usr/lib/libgstvideo-1.0.so", "/usr/lib/libgstbase-1.0.so", "/usr/lib/libgstpbutils-1.0.so", "/usr/lib/libgstreamer-1.0.so", "/usr/lib/libgobject-2.0.so"]
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5MultimediaGstTools"
    libNameForLinkerRelease: "Qt5MultimediaGstTools"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5MultimediaGstTools.so.5.12.2"
    cpp.defines: ["QT_MULTIMEDIAGSTTOOLS_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtMultimediaGstTools", "/usr/include/qt/QtMultimediaGstTools/5.12.2", "/usr/include/qt/QtMultimediaGstTools/5.12.2/QtMultimediaGstTools"]
    cpp.libraryPaths: []
    Group {
        files: [Qt["multimediagsttools-private"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}
