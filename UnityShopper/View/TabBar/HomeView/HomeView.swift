//
//  HomeView.swift
//  UnityShopper
//
//  Created by dsm 5e on 05.06.2023.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
            ScrollView(showsIndicators: false) {
                ForEach(HomeTabs.allCases, id: \.self) { tab in
                    NavigationLink(value: HomeTabs(rawValue: tab.rawValue)) {
                        HomeTabView(title: tab.title, image: tab.image)
                    }
                    .padding(.bottom, 8)
                }
                .padding(.horizontal)
                .navigationBarBackButtonHidden(true)
            }
            .navigationDestination(for: HomeTabs.self) { tab in
                tab.homeTabsView
            }
            .navigationSplitViewStyle(.prominentDetail)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            HomeView()
        }
    }
}
