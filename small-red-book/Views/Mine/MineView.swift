//
//  MineView.swift
//  small-red-book
//
//  Created by 田宇浩 on 2024/3/14.
//
//  我的模块
//

import SwiftUI

struct MineView: View {
    @State var tagActive = 1

    var body: some View {
        NavigationView {
            VStack {
                // 头部信息
                VStack {
                    // 标题s
                    HStack {
                        Button {} label: {
                            Image(systemName: "lines.measurement.horizontal")
                        }

                        Spacer()

                        Button {} label: {
                            Image(systemName: "square.and.arrow.up")
                        }
                    }
                    .padding(.horizontal, 12)
                    .foregroundStyle(.white)
                    .font(.system(size: 21))

                    // 用户信息
                    VStack(alignment: .leading) {
                        HStack(spacing: 20) {
                            Image("avatar")
                                .CircleImage(size: 80)

                            VStack(alignment: .leading) {
                                Text("用户昵称")
                                    .SetTextStyle(size: 21, color: .white)
                                    .bold()

                                HStack {
                                    Text("小红书号：1212121")
                                        .SetTextStyle(size: 12, color: .white)
                                    Image(systemName: "qrcode")
                                        .foregroundStyle(.white)
                                        .font(.system(size: 12))
                                }
                                .padding(.top, 1)

                                HStack {
                                    Text("IP属地：浙江")
                                        .SetTextStyle(size: 12, color: .white)
                                    Image(systemName: "globe.asia.australia")
                                        .foregroundStyle(.white)
                                        .font(.system(size: 12))
                                }
                                .padding(.top, 1)
                            }

                            Spacer()
                        }

                        Text("点击这里，填写简介")
                            .SetTextStyle(size: 17, color: .white)
                            .padding(.top, 12)

                        // 信息标签
                        HStack {
                            Button {} label: {
                                Text("处女座")
                                    .font(.system(size: 12))
                                    .padding(.vertical, 2)
                                    .padding(.horizontal, 7)
                                    .background(.white.opacity(0.2), in: RoundedRectangle(cornerRadius: 12))
                            }

                            Button {} label: {
                                Text("浙江杭州")
                                    .font(.system(size: 12))
                                    .padding(.vertical, 2)
                                    .padding(.horizontal, 7)
                                    .background(.white.opacity(0.2), in: RoundedRectangle(cornerRadius: 12))
                            }

                            Button {} label: {
                                Text("程序员")
                                    .font(.system(size: 12))
                                    .padding(.vertical, 2)
                                    .padding(.horizontal, 7)
                                    .background(.white.opacity(0.2), in: RoundedRectangle(cornerRadius: 12))
                            }
                        }
                        .foregroundStyle(.white)

                        // 操作栏
                        HStack {
                            VStack {
                                Text("12")
                                    .font(.system(size: 13))
                                Text("关注")
                                    .font(.system(size: 11))
                            }

                            VStack {
                                Text("4")
                                    .font(.system(size: 13))
                                Text("粉丝")
                                    .font(.system(size: 11))
                            }

                            VStack {
                                Text("32")
                                    .font(.system(size: 13))
                                Text("获赞与收藏")
                                    .font(.system(size: 11))
                            }

                            Spacer()

                            Button {} label: {
                                Text("编辑资料")
                                    .font(.system(size: 14))
                                    .padding(.vertical, 2)
                                    .padding(.horizontal, 7)
                                    .background(.white.opacity(0.2), in: RoundedRectangle(cornerRadius: 12))
                            }

                            Button {} label: {
                                Image(systemName: "ellipsis.circle")
                                    .font(.system(size: 14))
                                    .padding(.vertical, 2)
                                    .padding(.horizontal, 7)
                                    .background(.white.opacity(0.2), in: RoundedRectangle(cornerRadius: 12))
                            }
                        }
                        .foregroundStyle(.white)
                        .padding(.top, 12)
                    }
                    .padding(.horizontal, 12)
                    .padding(.top, 22)
                    .padding(.bottom, 8)
                }
                .padding(.bottom, 20)
                .background(
                    Image("image-3")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .edgesIgnoringSafeArea(.all)
                )

                // 内容部分
                ScrollView {
                    VStack {
                        HStack(spacing: 35) {
                            Button {
                                tagActive = 1
                            } label: {
                                Text("笔记")
                                    .foregroundStyle(tagActive == 1 ? .blue : .black)
                            }

                            Button {
                                tagActive = 2
                            } label: {
                                Text("收藏")
                                    .foregroundStyle(tagActive == 2 ? .blue : .black)
                            }

                            Button {
                                tagActive = 3
                            } label: {
                                Text("赞过")
                                    .foregroundStyle(tagActive == 3 ? .blue : .black)
                            }
                        }
                        .foregroundStyle(.black.opacity(0.6))
                        .padding(.vertical, 9)

                        // 标签页
                        TabView(selection: $tagActive) {
                            VStack(spacing: 28) {
                                ForEach(1 ..< 2) { _ in
                                    ArticleCardView()
                                }
                            }
                            .tag(1)
                            VStack {
                                Text("第2页")
                            }
                            .tag(2)
                            VStack {
                                Text("第3页")
                            }
                            .tag(3)
                        }
                        .tabViewStyle(.page(indexDisplayMode: .never))
                        .frame(minHeight: 580)
                    }
                    .background(.white, in: RoundedRectangle(cornerRadius: 20, style: .circular))
                }
                .offset(y: -25)

                TabbarView()
            }
        }
        .toolbar(.hidden)
    }
}

#Preview {
    MineView()
}
