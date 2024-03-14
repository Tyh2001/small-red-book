//
//  FollowView.swift
//  small-red-book
//
//  Created by Tyh2001 on 2024/3/13.
//
//  关注模块
//

import SwiftUI

struct FollowView: View {
    var body: some View {
        ScrollView {
            // 关注人的信息
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 14) {
                    ForEach(1 ..< 10) { _ in
                        Button {} label: {
                            VStack {
                                Image("avatar")
                                    .CircleImage(size: 60)
                                Text("用户名")
                                    .font(.system(size: 14))
                            }
                            .foregroundStyle(.black)
                        }
                    }
                }
                .padding(.vertical, 20)
                .padding(.horizontal, 10)
            }

            // 关注的人发布的内容
            VStack(spacing: 28) {
                ForEach(1 ..< 10) { _ in
                    ArticleCardView()
                }
            }
        }
        .background(.gray.opacity(0.1))
    }
}

#Preview {
    FollowView()
}
