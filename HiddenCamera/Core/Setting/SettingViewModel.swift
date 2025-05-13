//
//  SettingViewModel.swift
//  HiddenCamera
//
//  Created by Linh Vu on 13/5/25.
//

import Foundation

@MainActor
class SettingViewModel: ObservableObject, BackViewProtocol {
    private let router: SettingRouter
    @Published var title = "Settings"
    
    init(router: SettingRouter) {
        self.router = router
    }
    
    func didTap(setting: SettingType) {
        switch setting {
        case .share:
            router.showShareScreen(content: [AppConstants.share])
        case .rate:
            router.showRateScreen()
        case .privacy:
            if let url = URL(string: AppConstants.policy) {
                router.openAppShareURL(url)
            }
        case .term:
            if let url = URL(string: AppConstants.term) {
                router.openAppShareURL(url)
            }
        case .contact:
            if let url = URL(string: AppConstants.contact) {
                router.openAppShareURL(url)
            }
        case .restore:
            print("Tapped Restore")
        }
    }
    
    func dimissScreen() {
        router.dismissScreen()
    }
}
