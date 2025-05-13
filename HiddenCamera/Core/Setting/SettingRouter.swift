//
//  SettingRouter.swift
//  HiddenCamera
//
//  Created by Linh Vu on 13/5/25.
//

import Foundation

@MainActor
protocol SettingRouter {
    func dismissScreen()
    func showShareScreen(content: [Any])
    func openAppShareURL(_ url: URL)
    func showRateScreen()
}

extension EntryRouter: SettingRouter {}
