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
}

extension EntryRouter: SettingRouter {}
