//
//  GlobalRouter.swift
//  HiddenCamera
//
//  Created by Linh Vu on 13/5/25.
//

import SwiftUI
import SwiftfulRouting
import StoreKit

typealias AnyRouter = SwiftfulRouting.AnyRouter

@MainActor
protocol GlobalRouter {
    var router: AnyRouter { get }
}

extension GlobalRouter {
    func showShareScreen(content: [Any]) {
        guard let rootVC = UIApplication.shared
                .connectedScenes
                .compactMap({ $0 as? UIWindowScene })
                .flatMap({ $0.windows })
                .first?.rootViewController else {
            return
        }

        let activityVC = UIActivityViewController(activityItems: content, applicationActivities: nil)

        var topVC = rootVC
        while let presented = topVC.presentedViewController {
            topVC = presented
        }

        topVC.present(activityVC, animated: true)
    }
    
    func showRateScreen() {
        if #available(iOS 14.0, *) {
           if let scene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
               SKStoreReviewController.requestReview(in: scene)
           }
        } else {
           SKStoreReviewController.requestReview()
        }
    }

    // MARK: - External router
    func openAppShareURL(_ url: URL) {
        if UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }
    }
}
