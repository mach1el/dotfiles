import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "TextToSpeech"
    Depends { name: "Qt"; submodules: ["core"]}

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
    libNameForLinkerDebug: "Qt5TextToSpeech"
    libNameForLinkerRelease: "Qt5TextToSpeech"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5TextToSpeech.so.5.12.2"
    cpp.defines: ["QT_TEXTTOSPEECH_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtTextToSpeech"]
    cpp.libraryPaths: []
    Group {
        files: [Qt["texttospeech"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}
