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
    var body: some View {
        VStack {
            // 标题
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
            .foregroundStyle(.black)
            .font(.system(size: 21))

            // 用户信息
            VStack(alignment: .leading) {
                HStack {
                    Image("avatar")
                        .CircleImage(size: 80)

                    VStack(alignment: .leading) {
                        Text("用户昵称")
                            .SetTextStyle(size: 21, color: .black)
                            .bold()

                        HStack {
                            Text("小红书号：1212121")
                                .SetTextStyle(size: 12, color: .black)
                            Image(systemName: "qrcode")
                                .foregroundStyle(.black)
                                .font(.system(size: 12))
                        }

                        HStack {
                            Text("IP属地：浙江")
                                .SetTextStyle(size: 12, color: .black)
                            Image(systemName: "globe.asia.australia")
                                .foregroundStyle(.black)
                                .font(.system(size: 12))
                        }
                    }

                    Spacer()
                }

                Text("点击这里，填写简介")

                // 信息标签
                HStack {
                    Button {} label: {
                        Text("处女座")
                    }

                    Button {} label: {
                        Text("浙江杭州")
                    }

                    Button {} label: {
                        Text("程序员")
                    }
                }

                // 操作栏
                HStack {
                    VStack {
                        Text("12")
                        Text("关注")
                    }

                    VStack {
                        Text("12")
                        Text("粉丝")
                    }

                    VStack {
                        Text("12")
                        Text("获赞与收藏")
                    }

                    Spacer()

                    Button {} label: {
                        Text("编辑资料")
                    }

                    Button {} label: {
                        Image(systemName: "ellipsis.circle")
                    }
                }
            }
            .padding(.horizontal, 12)
            .padding(.top, 22)
            .padding(.bottom, 8)

            // 内容部分
            ScrollView {
                Text("内容1")
                Text("内容1")
                Text("内容1")
                Text("内容1")
                Text("内容1")
                Text("内容1")
                Text("内容1")
            }

            TabbarView()
        }
    }
}

#Preview {
    MineView()
}
