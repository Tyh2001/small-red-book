//
//  FindView.swift
//  small-red-book
//
//  Created by Tyh2001 on 2024/3/13.
//
//  发现模块
//

import SwiftUI

struct FincTagsPopup: View {
    var body: some View {
        VStack {
            // 我的频道
            VStack {
                // 标题栏
                HStack {
                    Text("我的频道")
                        .bold()
                        .font(.system(size: 16))
                    Text("点击进入频道")
                        .font(.system(size: 13))

                    Spacer()

                    Button {} label: {
                        Text("进入频道")
                            .padding(.vertical, 4)
                            .padding(.horizontal, 6)
                            .font(.system(size: 13))
                            .background(.black.opacity(0.05), in: RoundedRectangle(cornerRadius: 12))
                    }

                    Button {} label: {
                        Image(systemName: "chevron.up")
                    }
                    .foregroundStyle(.black.opacity(0.5))
                }
                .padding(.horizontal, 5)

                // 标题列表
                LazyVGrid(columns: [
                    GridItem(.fixed(100)),
                    GridItem(.fixed(100)),
                    GridItem(.fixed(100)),
                    GridItem(.fixed(100))
                ],
                alignment: .center) {
                    ForEach(0 ..< 23) { index in
                        Button {} label: {
                            Text("频道\(index)")
                                .frame(width: 80, height: 38)
                                .foregroundStyle(.black)
                                .font(.system(size: 14))
                                .background(.black.opacity(0.03))
                        }
                    }
                }
                .padding(.horizontal, 13)
            }

            // 推荐频道
            VStack {
                HStack {
                    Text("推荐频道")
                        .bold()
                        .font(.system(size: 16))
                    Text("点击添加频道")
                        .font(.system(size: 13))

                    Spacer()
                }
                .padding(.horizontal, 5)

                // 标题列表
                LazyVGrid(columns: [
                    GridItem(.fixed(100)),
                    GridItem(.fixed(100)),
                    GridItem(.fixed(100)),
                    GridItem(.fixed(100))
                ],
                alignment: .center) {
                    ForEach(0 ..< 23) { index in
                        Button {} label: {
                            Text("频道\(index)")
                                .frame(width: 80, height: 38)
                                .foregroundStyle(.black)
                                .font(.system(size: 14))
                                .background(.black.opacity(0.03))
                        }
                    }
                }
                .padding(.horizontal, 13)
            }
        }
        .padding(5)
    }
}

struct FindView: View {
    @State var tags: [String] = ["推荐", "视频", "直播", "穿搭", "汽车", "壁纸", "头条", "健身器材", "旅行", "推荐", "视频", "直播", "穿搭", "汽车", "壁纸", "头条", "健身器材", "旅行"]
    @State var tagActiveIndex = 0 // 标签选中的索引

    var body: some View {
        VStack {
            // 顶部切换滑动标题
            HStack {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 12) {
                        ForEach(tags.indices, id: \.self) { index in
                            Button {
                                tagActiveIndex = index
                            } label: {
                                Text(tags[index])
                                    .foregroundStyle(tagActiveIndex == index ? .blue : .black.opacity(0.5))
                            }
                        }
                    }
                    .font(.system(size: 16))
                }

                // 右侧下拉按钮
                Button {} label: {
                    Image(systemName: "chevron.down")
                }
                .foregroundStyle(.black.opacity(0.5))
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 3)
            .background(.white)

            FincTagsPopup() // 选择频道的弹出层

            // 主要内容部分
            TabView(selection: $tagActiveIndex) {
                ForEach(tags.indices, id: \.self) { index in
                    ScrollView {
                        HStack(alignment: .top, spacing: 4) {
                            VStack {
                                Card(banner: "image-1", title: "风景很不错\(index)", avatar: "avatar", userName: "张三")
                                Card(banner: "image-3", title: "看看我的车\(index)", avatar: "avatar", userName: "李四")
                                Card(banner: "image-4", title: "有绵羊啊\(index)", avatar: "avatar", userName: "奇怪")
                            }
                            VStack {
                                Card(banner: "image-2", title: "我的独家记忆\(index)", avatar: "avatar", userName: "赵六")
                                Card(banner: "image-1", title: "风景很不错\(index)", avatar: "avatar", userName: "张三")
                                Card(banner: "image-3", title: "看看我的车\(index)", avatar: "avatar", userName: "李四")
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
