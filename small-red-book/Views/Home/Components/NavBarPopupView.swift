//
//  NavBarPopupView.swift
//  small-red-book
//
//  Created by 田宇浩 on 2024/3/14.
//
//  滑动选择标签弹出层
//

import SwiftUI

struct NavBarPopupView: View {
    @Binding var isShowPopup: Bool

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

                    Button {
                        withAnimation {
                            isShowPopup = false
                        }
                    } label: {
                        Image(systemName: "chevron.up")
                    }
                    .foregroundStyle(.black.opacity(0.5))
                }
                .padding(.horizontal, 5)

                // 标题列表
                LazyVGrid(columns: [
                    GridItem(.fixed(80)),
                    GridItem(.fixed(80)),
                    GridItem(.fixed(80)),
                    GridItem(.fixed(80))
                ],
                alignment: .center) {
                    ForEach(0 ..< 23) { index in
                        Button {} label: {
                            Text("频道\(index)")
                                .frame(width: 75, height: 32)
                                .foregroundStyle(.black)
                                .font(.system(size: 13))
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
                    GridItem(.fixed(80)),
                    GridItem(.fixed(80)),
                    GridItem(.fixed(80)),
                    GridItem(.fixed(80))
                ],
                alignment: .center) {
                    ForEach(0 ..< 23) { index in
                        Button {} label: {
                            Text("频道\(index)")
                                .frame(width: 75, height: 32)
                                .foregroundStyle(.black)
                                .font(.system(size: 13))
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
