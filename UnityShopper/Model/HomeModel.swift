//
//  HomeViewModel.swift
//  UnityShopper
//
//  Created by dsm 5e on 12.06.2023.
//

import Foundation

struct HomeModel: Hashable {
    let image: String
    let title: String
    let destination: String
    
    static let homeViewTab: [HomeModel] = [
        HomeModel(image: "order", title: "Оформить заказ", destination: "ChekoutView"),
        HomeModel(image: "buyer", title: "Стать байером", destination: <#String#>),
        HomeModel(image: "stylyst", title: "Стать стилистом", destination: <#String#>),
        HomeModel(image: "giftCard", title: "Подарочная карта", destination: <#String#>)
    ]
}
