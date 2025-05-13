//
//  SettingViewModel.swift
//  HiddenCamera
//
//  Created by Linh Vu on 13/5/25.
//

import Foundation

@MainActor
class SettingViewModel: ObservableObject {
    private let router: SettingRouter
    
    init(router: SettingRouter) {
        self.router = router
    }
    
    func dimissScreen() {
        router.dismissScreen()
    }
}
