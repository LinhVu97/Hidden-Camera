//
//  SettingView.swift
//  HiddenCamera
//
//  Created by Linh Vu on 12/5/25.
//

import SwiftUI

struct SettingView: View {
    @StateObject var viewModel: SettingViewModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            BackView(viewModel: viewModel)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 16)
            
            List {
                ForEach(SettingType.allCases) { setting in
                    Button(action: {
                        viewModel.didTap(setting: setting)
                    }, label: {
                        HStack() {
                            setting.iconImage()
                                .resizable()
                                .frame(width: 24, height: 24)
                            
                            Text(setting.title)
                                .font(.system(size: 15, weight: .regular))
                                .foregroundStyle(.black)
                            Spacer()
                        }
                        .padding(.vertical, 10)
                    })
                    .listRowBackground(Color.colorF9F9F9)
                }
            }
            .scrollDisabled(true)
            .scrollContentBackground(.hidden)
            .background(Color.white)
        }
        .navigationBarBackButtonHidden(true)
    }
}
