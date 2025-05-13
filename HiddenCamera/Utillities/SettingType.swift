//
//  SettingType.swift
//  HiddenCamera
//
//  Created by Linh Vu on 13/5/25.
//

import Foundation
import SwiftUI

enum SettingType: CaseIterable, Identifiable {
    case share
    case rate
    case privacy
    case term
    case contact
    case restore
    
    var id: Self { self }
    
    var title: String {
        switch self {
        case .share:
            return "Share app"
        case .rate:
            return "Rate app"
        case .privacy:
            return "Privacy Policy"
        case .term:
            return "Term of Condition"
        case .contact:
            return "Contact Us"
        case .restore:
            return "Restore"
        }
    }
    
    func iconImage() -> Image {
        switch self {
        case .share:
            return Image(uiImage: .icShare)
        case .rate:
            return Image(uiImage: .icRate)
        case .privacy:
            return Image(uiImage: .icPrivacy)
        case .term:
            return Image(uiImage: .icTerm)
        case .contact:
            return Image(uiImage: .icContact)
        case .restore:
            return Image(uiImage: .icRestore)
        }
    }
}
