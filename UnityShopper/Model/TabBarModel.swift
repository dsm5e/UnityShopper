//
//  TabBarModel.swift
//  UnityShopper
//
//  Created by dsm 5e on 08.06.2023.
//

struct TabBarModel: Hashable {
    let text: String
    let icon: String
    
    static let tabBarItem: [TabBarModel] = [
        TabBarModel(text: "ГЛАВНАЯ", icon: "Home"),
        TabBarModel(text: "КАК ОФОРМИТЬ", icon: "Order"),
        TabBarModel(text: "ПОДБОРКИ", icon: "Selections"),
        TabBarModel(text: "ПРОФИЛЬ", icon: "Profile")
    ]
}
