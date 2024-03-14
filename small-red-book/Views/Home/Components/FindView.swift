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
    @State var tags: [String] = ["推荐", "视频", "直播", "穿搭", "汽车", "壁纸", "头条", "健身器材", "旅行", "推荐", "视频", "直播", "穿搭", "汽车", "壁纸", "头条", "健身器材", "旅行"]
    @State var tagActiveIndex = 0 // 标签选中的索引
    @State var isShowPopup = false // 是否显示对话框

    var body: some View {
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
                                CardView(banner: "image-1", title: "风景很不错\(index)", avatar: "avatar", userName: "张三")
                                CardView(banner: "image-3", title: "看看我的车\(index)", avatar: "avatar", userName: "李四")
                                CardView(banner: "image-4", title: "有绵羊啊\(index)", avatar: "avatar", userName: "奇怪")
                            }
                            VStack {
                                CardView(banner: "image-2", title: "我的独家记忆\(index)", avatar: "avatar", userName: "赵六")
                                CardView(banner: "image-1", title: "风景很不错\(index)", avatar: "avatar", userName: "张三")
                                CardView(banner: "image-3", title: "看看我的车\(index)", avatar: "avatar", userName: "李四")
                            }
                        }
                        .background(.gray.opacity(0.1))
                    }
                    .tag(index)
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
        }
    }
}

#Preview {
    FindView()
}
