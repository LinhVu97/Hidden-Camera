//
//  HomeRouter.swift
//  HiddenCamera
//
//  Created by Linh Vu on 13/5/25.
//

import Foundation

@MainActor
protocol HomeRouter {
    func showSetting()
}

extension EntryRouter: HomeRouter {}
