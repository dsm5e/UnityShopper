//
//  HomeViewModel.swift
//  UnityShopper
//
//  Created by dsm 5e on 12.06.2023.
//

import Foundation
import SwiftUI

enum HomeTabs: String, CaseIterable, Hashable {
    case order = "Order"
    case buyer = "Buyer"
    case stylyst = "Stylist"
    case giftCard = "giftCard"
    
    var image: String {
        switch self {
        case .order:
            return "order"
        case .buyer:
            return "buyer"
        case .stylyst:
            return "stylist"
        case .giftCard:
            return "giftCard"
        }
    }
    
    var title: String {
        switch self {
        case .order:
            return "Оформить заказ"
        case .buyer:
            return "Стать байером"
        case .stylyst:
            return "Стать стилистом"
        case .giftCard:
            return "Подарочная карта"
        }
    }

    
    @ViewBuilder var homeTabsView: some View {
        switch self {
        case .order:
            OrderView()
                .navigationBarBackButtonHidden(true)
        case .buyer:
            BuyerView()
                .navigationBarBackButtonHidden(true)
        case .stylyst:
            StylistView()
                .navigationBarBackButtonHidden(true)
        case .giftCard:
            GiftCardView()
                .navigationBarBackButtonHidden(true)
        }
    }
}
