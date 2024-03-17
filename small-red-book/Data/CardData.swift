//
//  CardData.swift
//  small-red-book
//
//  Created by Tyh2001 on 2024/3/17.
//

import SwiftUI

class CardDataModel: ObservableObject {
    var cardDatas: [CardData] = []
}

struct CardData: Identifiable {
    var id: Int
    var banner: String
    var title: String
    var avatar: String
    var userName: String
}
