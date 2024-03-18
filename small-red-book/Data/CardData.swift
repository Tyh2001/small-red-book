//
//  CardData.swift
//  small-red-book
//
//  Created by Tyh2001 on 2024/3/17.
//

import SwiftUI

class CardDataModel: ObservableObject {
    @Published var activeId: Int = 0 // 选中的 id
    var cardDatas: [CardData] = [
        CardData(id: 1, banner: "image-1", title: "标题1", avatar: "avatar", userName: "张三1", content: "读卡机打卡打卡的"),
        CardData(id: 2, banner: "image-2", title: "标题2", avatar: "avatar", userName: "张三2", content: "多哈时间快点哈结束多哈就会打架"),
        CardData(id: 3, banner: "image-3", title: "标题3", avatar: "avatar", userName: "张三3", content: "电话叫阿萨德回家啊喝点酒啊喝点酒啊喝点酒啊是"),
        CardData(id: 4, banner: "image-1", title: "标题4", avatar: "avatar", userName: "张三4", content: "这是文字内容1"),
        CardData(id: 5, banner: "image-4", title: "标题5", avatar: "avatar", userName: "张三5", content: "大数据肯德基阿克苏"),
        CardData(id: 6, banner: "image-3", title: "标题6", avatar: "avatar", userName: "张三6", content: "这是内"),
        CardData(id: 7, banner: "image-2", title: "标题7", avatar: "avatar", userName: "张三7", content: "这啊还有谁的哈导航i撒"),
        CardData(id: 8, banner: "image-4", title: "标题8", avatar: "avatar", userName: "张三8", content: "多哈就开始电话叫阿萨德好"),
    ]
}

struct CardData: Identifiable {
    var id: Int
    var banner: String
    var title: String
    var avatar: String
    var userName: String
    var content: String
}
