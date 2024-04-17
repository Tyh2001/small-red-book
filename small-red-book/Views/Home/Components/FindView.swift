//
//  FindView.swift
//  small-red-book
//
//  Created by Tyh2001 on 2024/3/13.
//
//  发现模块
//

import SwiftUI

struct FindView: View {
//    @Binding var isShowArticleDetail: Bool // 是否显示动态详情视图
    @State var isShowArticleDetail: Bool = false

    @State var tags: [String] = ["推荐", "视频", "直播", "穿搭", "汽车", "壁纸", "头条", "健身器材", "旅行", "推荐", "视频", "直播", "穿搭", "汽车", "壁纸", "头条", "健身器材", "旅行"]
    @State var tagActiveIndex = 0 // 标签选中的索引
    @State var isShowPopup = false // 是否显示对话框
    @State var cardDatas: [CardData] = [
        CardData(id: 1, banner: "image-1", title: "标题1", avatar: "avatar", userName: "张三1", content: "读卡机打卡打卡的"),
        CardData(id: 2, banner: "image-2", title: "标题2", avatar: "avatar", userName: "张三2", content: "多哈时间快点哈结束多哈就会打架"),
        CardData(id: 3, banner: "image-3", title: "标题3", avatar: "avatar", userName: "张三3", content: "电话叫阿萨德回家啊喝点酒啊喝点酒啊喝点酒啊是"),
        CardData(id: 4, banner: "image-1", title: "标题4", avatar: "avatar", userName: "张三4", content: "这是文字内容1"),
        CardData(id: 5, banner: "image-4", title: "标题5", avatar: "avatar", userName: "张三5", content: "大数据肯德基阿克苏"),
        CardData(id: 6, banner: "image-3", title: "标题6", avatar: "avatar", userName: "张三6", content: "这是内"),
        CardData(id: 7, banner: "image-2", title: "标题7", avatar: "avatar", userName: "张三7", content: "这啊还有谁的哈导航i撒"),
        CardData(id: 8, banner: "image-4", title: "标题8", avatar: "avatar", userName: "张三8", content: "多哈就开始电话叫阿萨德好"),
    ]

    var body: some View {
        ZStack {
            // 主视图
            VStack {
                if isShowPopup {
                    // 选择频道的弹出层
                    NavBarPopupView(isShowPopup: $isShowPopup)
                } else {
                    // 顶部切换滑动标题
                    NavBarView(tags: $tags, tagActiveIndex: $tagActiveIndex, isShowPopup: $isShowPopup)
                }

                // 主要内容部分
                TabView(selection: $tagActiveIndex) {
                    ForEach(tags.indices, id: \.self) { index in
                        ScrollView {
                            HStack(alignment: .top, spacing: 4) {
                                VStack {
                                    ForEach(cardDatas) { item in
                                        if item.id % 2 != 0 {
                                            CardView(data: item)
                                                .onTapGesture {
                                                    withAnimation {
                                                        isShowArticleDetail.toggle()
                                                    }
                                                }
                                        }
                                    }
                                }
                                VStack {
                                    ForEach(cardDatas) { item in
                                        if item.id % 2 == 0 {
                                            CardView(data: item)
                                                .onTapGesture {
                                                    withAnimation {
                                                        isShowArticleDetail.toggle()
                                                    }
                                                }
                                        }
                                    }
                                }
                                .background(.gray.opacity(0.04))
                                .padding(.horizontal, 4)
                            }
                            .tag(index)
                        }
                    }
                    .tabViewStyle(.page(indexDisplayMode: .never))
                }
            }

            // 动态详情视图
            if isShowArticleDetail {
                ArticleDetailView(isShowArticleDetail: $isShowArticleDetail)
            }
        }
    }
}

#Preview {
    FindView()
}
