import AppKit

// LidTap test runner.  build/LidTapTests [suite ...]
// Suites: ml detector logic profiles update ui hardware actions guard e2e updatelive   (default: ml detector logic profiles update ui)
// "updatelive" asks the real GitHub for the latest release and verifies its download.
// "hardware", "actions", "guard" and "e2e" touch the real system (sensors, desktops, apps, microphone, screen).

// Relaunch with English so menu-title lookups stay stable on a Chinese Mac. The argument domain
// overrides the language for this process only and is not written to the user's preferences.
if !CommandLine.arguments.contains("-AppleLanguages") {
    let proc = Process()
    proc.executableURL = URL(fileURLWithPath: CommandLine.arguments[0])
    proc.arguments = ["-AppleLanguages", "(en)"] + CommandLine.arguments.dropFirst()
    if (try? proc.run()) != nil {
        proc.waitUntilExit()
        exit(proc.terminationStatus)
    }
}

let rawArgs = Array(CommandLine.arguments.dropFirst())
var suiteArgs: [String] = []
var argIndex = 0
while argIndex < rawArgs.count {
    if rawArgs[argIndex] == "-AppleLanguages" { argIndex += 2; continue }
    suiteArgs.append(rawArgs[argIndex])
    argIndex += 1
}
let wanted = Set(suiteArgs)
let suites = wanted.isEmpty ? ["ml", "detector", "logic", "profiles", "update", "ui"] : Array(wanted)

MainActor.assumeIsolated {
    NSApplication.shared.setActivationPolicy(.accessory)
    NSApp.finishLaunching()
    let all: [(String, () -> Void)] = [
        ("ml", mlTests), ("detector", detectorTests), ("logic", appLogicTests), ("profiles", profileTests), ("update", updaterTests), ("updatelive", updaterLiveTests), ("ui", uiTests),
        ("hardware", hardwareTests), ("actions", actionTests), ("guard", guardTests), ("e2e", endToEndTests), ("diag", diagnosticTests), ("sweep", rejectSweep), ("augment", augmentDiag),
    ]
    for (name, run) in all where suites.contains(name) { run() }
    exit(T.summary())
}
