//
//  HomeView.swift
//  HiddenCamera
//
//  Created by Linh Vu on 12/5/25.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel: HomeViewModel
    
    var body: some View {
        VStack {
            HStack {
                Text("camera \ndetector".uppercased())
                    .font(.system(size: 32, weight: .bold))
                Spacer()
                Button {
                    viewModel.pushToSettingView()
                } label: {
                    Image(uiImage: .icSetting)
                        .resizable()
                        .frame(width: 24, height: 24)
                }

            }
            .padding()
        }
    }
}
