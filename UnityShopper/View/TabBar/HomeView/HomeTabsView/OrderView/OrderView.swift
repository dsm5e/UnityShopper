//
//  ExploreView.swift
//  UnityShopper
//
//  Created by dsm 5e on 05.06.2023.
//

import SwiftUI

struct OrderView: View {
    @AppStorage("log_Status") var log_Status: Bool = false
    @Environment(\.dismiss) var dismiss
    @State var isRootView: Bool = true

    @State private var selectedTab = "Home"

    var body: some View {
        VStack {
            Spacer()
            if log_Status {
                MakeOrderView()
            } else {
                LoginView()
            }
            Spacer()
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            OrderView()
        }
    }
}
