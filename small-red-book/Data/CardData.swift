//
//  CardData.swift
//  small-red-book
//
//  Created by Tyh2001 on 2024/3/17.
//

import SwiftUI

class CardDataModel: ObservableObject {
    var cardDatas: [CardData] = [
        CardData(id: 1, banner: "image-1", title: "标题1", avatar: "avatar", userName: "张三1"),
        CardData(id: 2, banner: "image-2", title: "标题2", avatar: "avatar", userName: "张三2"),
        CardData(id: 3, banner: "image-3", title: "标题3", avatar: "avatar", userName: "张三3"),
        CardData(id: 4, banner: "image-1", title: "标题4", avatar: "avatar", userName: "张三4"),
        CardData(id: 5, banner: "image-4", title: "标题5", avatar: "avatar", userName: "张三5"),
        CardData(id: 6, banner: "image-3", title: "标题6", avatar: "avatar", userName: "张三6"),
        CardData(id: 7, banner: "image-2", title: "标题7", avatar: "avatar", userName: "张三7"),
        CardData(id: 8, banner: "image-4", title: "标题8", avatar: "avatar", userName: "张三8"),
    ]
}

struct CardData: Identifiable {
    var id: Int
    var banner: String
    var title: String
    var avatar: String
    var userName: String
}
