import Foundation

/// English source strings are the keys. Each language is a `Localizable.strings` table in the app bundle.
enum L10n {
    static func tr(_ key: String, _ args: CVarArg...) -> String {
        let format = Bundle.main.localizedString(forKey: key, value: key, table: nil)
        guard !args.isEmpty else { return format }
        return String(format: format, locale: .current, arguments: args)
    }
}
