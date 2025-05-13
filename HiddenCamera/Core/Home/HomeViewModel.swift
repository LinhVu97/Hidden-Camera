//
//  HomeViewModel.swift
//  HiddenCamera
//
//  Created by Linh Vu on 12/5/25.
//

import Foundation

@MainActor
class HomeViewModel: ObservableObject {
    private let router: HomeRouter
    
    init(router: HomeRouter) {
        self.router = router
    }
    
    func pushToSettingView() {
        router.showSetting()
    }
}
