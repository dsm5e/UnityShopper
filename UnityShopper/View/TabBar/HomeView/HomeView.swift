//
//  HomeView.swift
//  UnityShopper
//
//  Created by dsm 5e on 05.06.2023.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                ForEach(HomeTabs.allCases, id: \.self) { tab in
                    NavigationLink(value: HomeTabs(rawValue: tab.rawValue)) {
                        HomeTabView(title: tab.title, image: tab.image)
                    }
                    .padding(.bottom, 8)

                }
                .padding(.horizontal)

            }
            .navigationDestination(for: HomeTabs.self) { tab in
                tab.homeTabsView
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
            HomeView()
    }
}
