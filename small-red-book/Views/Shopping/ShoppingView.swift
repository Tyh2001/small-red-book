//
//  ShoppingView.swift
//  small-red-book
//
//  Created by Tyh2001 on 2024/3/14.
//
//  购物
//

import SwiftUI

struct ShoppingView: View {
    @State var searchText = "" // 搜索的内容

    var body: some View {
        NavigationView {
            VStack {
                // 标题
                HStack {
                    Image(systemName: "magnifyingglass")
                    TextField("二手手机和电脑", text: $searchText)

                    Spacer()
                    Button {} label: {
                        Image(systemName: "mappin.circle.fill")
                    }

                    Button {} label: {
                        Image(systemName: "map")
                    }

                    Button {} label: {
                        Image(systemName: "list.bullet")
                    }
                }
                .padding(.horizontal, 12)
                .foregroundStyle(.black)

                // 推荐的内容
                ScrollView {
                    // 商品选项列表
                    LazyVGrid(columns: [
                        GridItem(.fixed(90)),
                        GridItem(.fixed(90)),
                        GridItem(.fixed(90)),
                        GridItem(.fixed(90))
                    ]) {
                        ForEach(0 ..< 8) { index in
                            VStack {
                                Image("image-4")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .aspectRatio(contentMode: .fit)
                                Text("列表\(index)")
                            }
                        }
                    }
                    .padding(.top, 20)

                    // 商品列表
                    HStack(alignment: .top, spacing: 4) {
                        VStack {
//                            CardView(banner: "image-1", title: "风景很不错", avatar: "avatar", userName: "张三")
//                            CardView(banner: "image-3", title: "看看我的车", avatar: "avatar", userName: "李四")
//                            CardView(banner: "image-4", title: "有绵羊啊", avatar: "avatar", userName: "奇怪")
                        }
                        VStack {
//                            CardView(banner: "image-2", title: "我的独家记忆", avatar: "avatar", userName: "赵六")
//                            CardView(banner: "image-1", title: "风景很不错", avatar: "avatar", userName: "张三")
//                            CardView(banner: "image-3", title: "看看我的车", avatar: "avatar", userName: "李四")
                        }
                    }
                    .background(.gray.opacity(0.1))
                }
            }
        }
        .toolbar(.hidden)
    }
}

#Preview {
    ShoppingView()
}
