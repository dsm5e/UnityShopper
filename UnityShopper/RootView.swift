//
//  ContentView.swift
//  UnityShopper
//
//  Created by dsm 5e on 05.06.2023.
//

import SwiftUI

    
struct RootView: View {
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    @State private var selectedTab = "Home"
    
    var body: some View {
        
        Header()
        
        TabBar(selectedTab: $selectedTab)
    }
}

struct Header: View {
    var body: some View {
        HStack {
            Image("USLogo")
                .resizable()
                .scaledToFit()
                .frame(height: 60, alignment: .center)
                .frame(maxWidth: .infinity)
        }
    }
}

struct TabBar: View {
    
    @Binding var selectedTab: String
    
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $selectedTab) {
                HomeView()
                    .tag("Home")
                
                OrderView()
                    .tag("Order")
                
                SelectionsView()
                    .tag("Selections")
                
                ProfileView()
                    .tag("Profile")
            }
            .padding(.bottom, 55)
            VStack {
                Rectangle()
                    .foregroundColor(.gray.opacity(0.3))
                    .frame(height: 2)
                    .frame(maxWidth: .infinity)
                HStack(spacing: 12) {
                    Spacer()
                    ForEach(TabBarModel.tabBarItem, id: \.self) { tab in
                        Button {
                            withAnimation(.spring()) {
                                selectedTab = tab.icon
                            }
                        } label: {
                            VStack {
                                Image(tab.icon)
                                    .renderingMode(.template)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 25, height: 25)
                                    .tint(selectedTab == tab.icon ? .black : .gray)
                                Text(tab.text)
                                    .customFont(font: FontManager.Raleway.semiBold, size: 12)
                                    .foregroundColor(selectedTab == tab.icon ? .black : .gray)
                            }
                        }
                    }
                    Spacer()
                }
            }
        }
        .padding(.bottom, 20)
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            RootView()
        }
    }
}
