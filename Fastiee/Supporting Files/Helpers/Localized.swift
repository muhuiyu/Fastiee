//
//  Localized.swift
//  Fastiee
//
//  Created by Mu Yu on 6/25/22.
//

import Foundation

struct Localized {
    static var AppName: String { "APPNAME".localized }
}

// MARK: - Loading Screen
extension Localized {
    struct Loading {
        static var title: String { "Loading".localized }
    }
}

// MARK: - Main Tab Bar
extension Localized {
    struct MainTab {
        static var home: String { "MainTab.Home".localized }
        static var me: String { "MainTab.Me".localized }
    }
}

// MARK: - Language
extension Localized {
    struct Language {
        static var Title: String { "Language.Title".localized }
        static var en: String { "Language.en".localized }
        static var ja: String { "Language.ja".localized }
        static var vi: String { "Language.vi".localized }
        static var changeLanguage: String { "Language.changeLanguage".localized }
    }
}
