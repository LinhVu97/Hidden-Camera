//
//  SplashView.swift
//  HiddenCamera
//
//  Created by Linh Vu on 12/5/25.
//

import SwiftUI
import SwiftfulRouting

struct SplashView: View {
    @State private var isActive = false
    
    var body: some View {
        if isActive {
            RouterView { router in
                let entryBuilder = EntryBuilder()
                let entryRouter = EntryRouter(router: router, builder: entryBuilder)
                let viewModel = HomeViewModel(router: entryRouter)
                return HomeView(viewModel: viewModel)
            }
        } else {
            Image(uiImage: .icLogo)
                .resizable()
                .frame(width: 200, height: 200)
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        withAnimation {
                            isActive = true
                        }
                    }
                }
        }
    }
}

#Preview {
    SplashView()
}
