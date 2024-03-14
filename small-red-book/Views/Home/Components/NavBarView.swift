//
//  NavBarView.swift
//  small-red-book
//
//  Created by 田宇浩 on 2024/3/14.
//
//  滑动选择标签列表
//

import SwiftUI

struct NavBarView: View {
    @Binding var tags: [String]
    @Binding var tagActiveIndex: Int
    @Binding var isShowPopup: Bool

    var body: some View {
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
            Button {
                withAnimation {
                    isShowPopup = true
                }
            } label: {
                Image(systemName: "chevron.down")
            }
            .foregroundStyle(.black.opacity(0.5))
        }
        .padding(.horizontal, 12)
        .padding(.vertical, 3)
        .background(.white)
    }
}
