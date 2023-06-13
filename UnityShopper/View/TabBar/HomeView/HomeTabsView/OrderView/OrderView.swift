//
//  ExploreView.swift
//  UnityShopper
//
//  Created by dsm 5e on 05.06.2023.
//

import SwiftUI

struct OrderView: View {
    @AppStorage("log_Status") var log_Status: Bool = false

    @State private var selectedTab = "Home"

    var body: some View {
        VStack {
            Header()
            Spacer()
            if log_Status {
                MakeOrderView()
            } else {
                LoginView()
            }
            Spacer()
            Button("print") {
                print(log_Status.description)
            }
        }
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            OrderView()
        }
    }
}
