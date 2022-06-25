//
//  String+Localized.swift
//  Fastiee
//
//  Created by Mu Yu on 6/25/22.
//

import Foundation
import UIKit

extension String {
    var localized: String {
        return NSLocalizedString(self, tableName: CacheManager.shared.preferreLanguage.rawValue, comment: "")
    }
}
