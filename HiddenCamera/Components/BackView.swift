//
//  BackView.swift
//  HiddenCamera
//
//  Created by Linh Vu on 13/5/25.
//

import SwiftUI

@MainActor
protocol BackViewProtocol: ObservableObject {
    var title: String { get }
    func dimissScreen()
}

struct BackView: View {
    @ObservedObject var viewModel: SettingViewModel
    
    var body: some View {
        HStack(spacing: 10) {
            Button(action: {
                viewModel.dimissScreen()
            }, label: {
                Image(uiImage: .icBack)
                    .resizable()
                    .frame(width: 24, height: 24)
            })
            
            Text(viewModel.title)
                .font(.system(size: 18, weight: .semibold))
        }
    }
}
