//
//  RecordView.swift
//  small-red-book
//
//  Created by Tyh2001 on 2024/3/19.
//

import SwiftUI

struct RecordView: View {
    @State var isShow = false

    var body: some View {
        VStack {
            // 头部
            HStack {
                Button {
                    isShow = true
                } label: {
                    Image("avatar")
                        .CircleImage(size: 45)
                }
                VStack(alignment: .leading) {
                    Text("记录我的日常")
                        .SetTextStyle(size: 14, color: .white)
                    Text("再未开始记录哦")
                        .SetTextStyle(size: 14, color: .white)
                }
                Spacer()

                Image(systemName: "xmark")
                    .foregroundStyle(.white)
            }
            .padding(.horizontal, 12)

            LazyVGrid(
                columns: [GridItem(.fixed(110)),
                          GridItem(.fixed(110)),
                          GridItem(.fixed(110))],
                alignment: .center
            ) {
                HStack {
                    Text("咻咻")
                        .foregroundStyle(.white)
                }
                .frame(width: 110, height: 90)
                .background(.orange, in: RoundedRectangle(cornerRadius: 12))

                HStack {
                    Text("语音")
                        .foregroundStyle(.white)
                }
                .frame(width: 110, height: 90)
                .background(.green)
                .background(.orange, in: RoundedRectangle(cornerRadius: 12))

                HStack {
                    Text("日签")
                        .foregroundStyle(.white)
                }
                .frame(width: 110, height: 90)
                .background(.pink)
                .background(.orange, in: RoundedRectangle(cornerRadius: 12))
            }
            .padding(.top, 20)

            LazyVGrid(
                columns: [GridItem(.fixed(110)),
                          GridItem(.fixed(110)),
                          GridItem(.fixed(110))],
                alignment: .center
            ) {
                HStack {
                    Text("打开")
                        .foregroundStyle(.white)
                }
                .frame(width: 110, height: 90)
                .background(.purple, in: RoundedRectangle(cornerRadius: 12))

                HStack {
                    Text("文字")
                        .foregroundStyle(.white)
                }
                .frame(width: 110, height: 90)
                .background(.brown)
                .background(.orange, in: RoundedRectangle(cornerRadius: 12))

                HStack {
                    Text("拍摄")
                        .foregroundStyle(.white)
                }
                .frame(width: 110, height: 90)
                .background(.yellow)
                .background(.orange, in: RoundedRectangle(cornerRadius: 12))
            }

            Spacer()
        }
        .background(.black)
//        弹出框3
//        .fullScreenCover(isPresented: $isShow) {
//            VStack {
//                Text("展示的内容")
//                Button {
//                    isShow = false
//                } label: {
//                    Text("关闭")
//                }
//            }
//        }
//        弹出框2
//        .sheet(isPresented: $isShow) {
//            VStack {
//                Text("展示的内容")
//                Button {
//                    isShow = false
//                } label: {
//                    Text("关闭")
//                }
//            }
//        }
//        弹出框1
//        .confirmationDialog("", isPresented: $isShow) {
//            VStack {
//                Text("展示的内容")
//                Button {
//                    isShow = false
//                } label: {
//                    Text("关闭")
//                }
//            }
//        }
    }
}

#Preview {
    RecordView()
}
