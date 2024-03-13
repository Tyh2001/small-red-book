//
//  FollowView.swift
//  small-red-book
//
//  Created by Tyh2001 on 2024/3/13.
//

import SwiftUI

struct FollowView: View {
    var body: some View {
        ScrollView {
            HStack(alignment: .top, spacing: 4) {
                VStack {
                    Card(banner: "image-1", title: "风景很不错", avatar: "avatar", userName: "张三")
                }
                VStack {
                    Card(banner: "image-2", title: "我的独家记忆", avatar: "avatar", userName: "赵六")
                    Card(banner: "image-1", title: "风景很不错", avatar: "avatar", userName: "张三")
                }
            }
        }
        .background(.gray.opacity(0.1))

//        .frame(minHeight: UIScreen.main.bounds.height)
//        .padding(.horizontal, 8)
//        .background(.gray.opacity(0.1))
    }
}

#Preview {
    FollowView()
}
