//
//  SplashScreen.swift
//  UnityShopper
//
//  Created by dsm 5e on 05.06.2023.
//

import SwiftUI

struct SplashScreen: View {
    
    @State private var isActive: Bool = false
    @State private var size = 0.7
    @State private var opacity = 0.3
    
    var body: some View {
        ZStack {
            if self.isActive {
                RootView()
            } else {
                VStack {
                    Image("USLogo")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 130)
                    Text("ШОППИНГ БЕЗ ГРАНИЦ")
                        .font(.caption)
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 0.9
                        self.opacity = 1.00
                    }
                }
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}

