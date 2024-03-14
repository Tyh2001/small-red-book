//
//  MessageView.swift
//  small-red-book
//
//  Created by 田宇浩 on 2024/3/14.
//
//  消息页面
//

import SwiftUI

struct MessageView: View {
    var body: some View {
        VStack {
            // 顶部标题
            HStack {
                Button {} label: {
                    Image(systemName: "person.2")
                    Text("群聊")
                }
                .opacity(0)

                Spacer()

                Text("消息")

                Spacer()

                Button {} label: {
                    Image(systemName: "person.2")
                    Text("群聊")
                        .SetTextStyle(size: 13, color: .black)
                }
                .foregroundStyle(.black)
            }
            .padding(.horizontal, 12)

            // 主要内容
            ScrollView {
                // 标签
                HStack {
                    Spacer()

                    Button {} label: {
                        VStack {
                            Image(systemName: "heart")
                                .foregroundStyle(.red)
                                .font(.system(size: 22))
                                .padding(10)
                                .background(.red.opacity(0.2), in: RoundedRectangle(cornerRadius: 12))
                            Text("赞和收藏")
                                .SetTextStyle(size: 14, color: .black)
                                .padding(.top, 8)
                        }
                    }

                    Spacer()

                    Button {} label: {
                        VStack {
                            Image(systemName: "person")
                                .foregroundStyle(.blue)
                                .font(.system(size: 22))
                                .padding(10)
                                .background(.blue.opacity(0.2), in: RoundedRectangle(cornerRadius: 12))
                            Text("新增关注")
                                .SetTextStyle(size: 14, color: .black)
                                .padding(.top, 8)
                        }
                    }

                    Spacer()

                    Button {} label: {
                        VStack {
                            Image(systemName: "star")
                                .foregroundStyle(.green)
                                .font(.system(size: 22))
                                .padding(10)
                                .background(.green.opacity(0.2), in: RoundedRectangle(cornerRadius: 12))
                            Text("评论和@")
                                .SetTextStyle(size: 14, color: .black)
                                .padding(.top, 8)
                        }
                    }

                    Spacer()
                }
                .padding(.top, 12)

                // 消息列表
                ForEach(1 ..< 12) { index in
                    HStack {
                        Image("avatar")
                            .CircleImage(size: 50)
                        VStack {
                            HStack {
                                Text("用户名\(index)")
                                Spacer()
                                Text("12:32")
                                    .SetTextStyle(size: 13, color: .black.opacity(0.4))
                            }
                            HStack {
                                Text("我给你发来一条消息")
                                    .SetTextStyle(size: 14, color: .black.opacity(0.5))
                                Spacer()
                                Text("3")
                                    .SetTextStyle(size: 13, color: .white)
                                    .padding(.vertical, 2)
                                    .padding(.horizontal, 6)
                                    .background(.red, in: RoundedRectangle(cornerRadius: 12))
                            }
                        }
                    }
                    .padding(.horizontal, 12)
                    .padding(.vertical, 7)
                    .background(.white)
                }
            }

            TabbarView()
        }
    }
}

#Preview {
    MessageView()
}
