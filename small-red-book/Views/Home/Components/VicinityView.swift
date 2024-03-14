//
//  VicinityView.swift
//  small-red-book
//
//  Created by Tyh2001 on 2024/3/13.
//
//  附近模块
//

import SwiftUI

struct VicinityView: View {
    var body: some View {
        ScrollView {
            HStack(alignment: .top, spacing: 4) {
                VStack {
                    CardView(banner: "image-1", title: "风景很不错", avatar: "avatar", userName: "张三")
                    CardView(banner: "image-3", title: "看看我的车", avatar: "avatar", userName: "李四")
                    CardView(banner: "image-4", title: "有绵羊啊", avatar: "avatar", userName: "奇怪")
                    CardView(banner: "image-4", title: "有绵羊啊", avatar: "avatar", userName: "奇怪")
                }
                VStack {
                    CardView(banner: "image-2", title: "我的独家记忆", avatar: "avatar", userName: "赵六")
                    CardView(banner: "image-1", title: "风景很不错", avatar: "avatar", userName: "张三")
                    CardView(banner: "image-3", title: "看看我的车", avatar: "avatar", userName: "李四")
                }
            }
            .background(.gray.opacity(0.1))
        }
    }
}

#Preview {
    VicinityView()
}
