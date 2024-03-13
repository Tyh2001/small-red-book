//
//  ContentView.swift
//  small-red-book
//
//  Created by 田宇浩 on 2024/3/13.
//

import SwiftUI

struct ContentView: View {
    @State var active = 1

    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    Color.clear.frame(height: 50)

                    // 关注
                    TabView(selection: $active) {
                        HStack(alignment: .top, spacing: 4) {
                            VStack {
                                Card(banner: "image-1", title: "风景很不错", avatar: "avatar", userName: "张三")
                                Card(banner: "image-3", title: "看看我的车", avatar: "avatar", userName: "李四")
                                Card(banner: "image-4", title: "有绵羊啊", avatar: "avatar", userName: "奇怪")
                            }
                            VStack {
                                Card(banner: "image-2", title: "我的独家记忆", avatar: "avatar", userName: "赵六")
                                Card(banner: "image-1", title: "风景很不错", avatar: "avatar", userName: "张三")
                                Card(banner: "image-3", title: "看看我的车", avatar: "avatar", userName: "李四")
                            }
                        }
                        .padding(.horizontal, 8)
                        .background(.gray.opacity(0.1))
                        .tag(1)

                        // 关注
                        HStack(alignment: .top, spacing: 4) {
                            VStack {
                                Card(banner: "image-1", title: "风景很不错", avatar: "avatar", userName: "张三")
                            }
                            VStack {
                                Card(banner: "image-2", title: "我的独家记忆", avatar: "avatar", userName: "赵六")
                                Card(banner: "image-1", title: "风景很不错", avatar: "avatar", userName: "张三")
                            }
                        }
                        .padding(.horizontal, 8)
                        .background(.gray.opacity(0.1))
                        .tag(2)

                        // 附近
                        HStack(alignment: .top, spacing: 4) {
                            VStack {
                                Card(banner: "image-1", title: "风景很不错", avatar: "avatar", userName: "张三")
                                Card(banner: "image-3", title: "看看我的车", avatar: "avatar", userName: "李四")
                                Card(banner: "image-4", title: "有绵羊啊", avatar: "avatar", userName: "奇怪")
                                Card(banner: "image-4", title: "有绵羊啊", avatar: "avatar", userName: "奇怪")
                            }
                            VStack {
                                Card(banner: "image-2", title: "我的独家记忆", avatar: "avatar", userName: "赵六")
                                Card(banner: "image-1", title: "风景很不错", avatar: "avatar", userName: "张三")
                                Card(banner: "image-3", title: "看看我的车", avatar: "avatar", userName: "李四")
                            }
                        }
                        .padding(.horizontal, 8)
                        .background(.gray.opacity(0.1))
                        .tag(3)
                    }
                    .tabViewStyle(.page)
                    .frame(minHeight: UIScreen.main.bounds.height)
                }
                .ignoresSafeArea() // 忽略安全区域

                Tabbar()

                    .toolbar {
                        // 标签
                        ToolbarItem(placement: .principal) {
                            HStack {
                                Button {
                                    active = 1
                                } label: {
                                    Text("关注")
                                        .foregroundStyle(active == 1 ? .blue : .black)
                                }

                                Button {
                                    active = 2
                                } label: {
                                    Text("发现")
                                        .foregroundStyle(active == 2 ? .blue : .black)
                                }

                                Button {
                                    active = 3
                                } label: {
                                    Text("附近")
                                        .foregroundStyle(active == 3 ? .blue : .black)
                                }
                            }
                            .foregroundStyle(.black)
                        }

                        // 搜索按钮
                        ToolbarItem(placement: .navigationBarTrailing) {
                            Button {} label: {
                                Image(systemName: "magnifyingglass")
                            }
                        }
                    }
            }
        }
    }
}

#Preview {
    ContentView()
}
