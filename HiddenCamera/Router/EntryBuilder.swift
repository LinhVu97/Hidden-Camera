//
//  EntryBuilder.swift
//  HiddenCamera
//
//  Created by Linh Vu on 13/5/25.
//

import Foundation
import SwiftUI
import SwiftfulRouting

@MainActor
struct EntryBuilder {
    
    func settingView(router: AnyRouter) -> some View {
        let settingViewModel = SettingViewModel(
            router: EntryRouter(router: router, builder: self)
        )
        return SettingView(viewModel: settingViewModel)
    }
}
