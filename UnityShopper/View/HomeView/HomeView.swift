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
            VStack {
                GeometryReader { proxy in
                    VStack(spacing: 14) {
                        ForEach(HomeModel.homeViewTab, id: \.self) { tab in
                            NavigationLink {
                                tab.title
                            } label: {
                                HomeRowView(title: tab.title, image: tab.image, height: proxy.size.height / 4.4)
                            }
                        }
                    }
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
