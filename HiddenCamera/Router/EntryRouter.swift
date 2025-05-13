//
//  EntryRouter.swift
//  HiddenCamera
//
//  Created by Linh Vu on 13/5/25.
//

import Foundation
import SwiftfulRouting

@MainActor
struct EntryRouter {
    let router: AnyRouter
    let builder: EntryBuilder
    
    // MARK: - Dismiss
    func dismissScreen() {
        router.dismissScreen()
    }
    
    func showSetting() {
        router.showScreen(.push) { router in
            builder.settingView(router: router)
        }
    }
}
