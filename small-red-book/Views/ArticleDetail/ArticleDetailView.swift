//
//  ArticleDetailView.swift
//  small-red-book
//
//  Created by 田宇浩 on 2024/3/15.
//

import SwiftUI

struct ArticleDetailView: View {
    @State var contentText = "" // 评论内容
    @State var dragValues = 0 // 拖动的距离
    @Binding var isShowArticleDetail: Bool // 是否显示文章详情
//    @EnvironmentObject var myCardDatas: CardDataModel // 数据
    var data: CardData = .init(id: 1, banner: "image-1", title: "标题1", avatar: "avatar", userName: "张三啊", content: "测试内容")

    var body: some View {
//        NavigationStack {
        VStack {
            // 标题
            HStack {
                Button {
//                        withAnimation {
                    isShowArticleDetail.toggle()
//                        }
                } label: {
                    Image(systemName: "chevron.backward")
                        .foregroundStyle(.black)
                }
                Image(data.avatar)
                    .CircleImage(size: 25)

                Text(data.userName)

                Spacer()

                Button {} label: {
                    Text("关注")
                        .SetTextStyle(size: 13, color: .red)
                        .padding(.vertical, 8)
                        .padding(.horizontal, 12)
                        .background(.white)
                        .padding(1)
                        .background(.red, in: RoundedRectangle(cornerRadius: 15))
                }

                Button {} label: {
                    Image(systemName: "square.and.arrow.up")
                        .foregroundStyle(.black)
                }
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 8)
            .background(.white)

            // 内容部分
            ScrollView {
                // 图片
                Image(data.banner)
                    .resizable()
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width)
                    .aspectRatio(contentMode: .fill)
                    .clipped()
                // .matchedGeometryEffect(id: "articleBanner", in: namespace)

                // 内容部分
                VStack(alignment: .leading) {
                    // 标题
                    HStack {
                        Text(data.title)
                            .font(.title2)
                            .bold()
                    }
                    .padding(.top, 4)

                    // 内容
                    HStack {
                        Text(data.title)
                            .SetTextStyle(size: 16, color: .black.opacity(0.8))
                    }
                    .padding(.top, 4)

                    // 话题
                    HStack {
                        Button {} label: {
                            Text("#蓝天")
                        }
                        Button {} label: {
                            Text("#摄影")
                        }
                        Button {} label: {
                            Text("#春天")
                        }
                    }
                    .padding(.top, 4)

                    // 发布时间
                    Text("02:12 浙江")
                        .SetTextStyle(size: 13, color: .gray)
                        .padding(.top, 6)

                    // 分割线
                    Divider()

                    // 评论标题
                    Text("共12条评论")
                        .SetTextStyle(size: 16, color: .black.opacity(0.7))
                        .padding(.top, 4)

                    // 评论内容
                    HStack {
                        Image("avatar")
                            .CircleImage(size: 30)

                        Button {} label: {
                            Text("让大家听到你的声音")
                                .padding(.horizontal, 15)
                                .padding(.vertical, 6)
                                .multilineTextAlignment(.leading)
                                .frame(width: 300)
                                .background(.gray.opacity(0.1), in: RoundedRectangle(cornerRadius: 18))
                                .foregroundStyle(.gray)
                                .font(.system(size: 14))
                        }
                    }

                    // 评论内容列表
                    VStack {
                        ForEach(0 ..< 12) { index in
                            HStack {
                                Image("avatar")
                                    .CircleImage(size: 30)

                                VStack(alignment: .leading) {
                                    // 用户信息
                                    HStack {
                                        Text("用户名\(index)")
                                            .SetTextStyle(size: 13, color: .gray)

                                        Spacer()

                                        Image(systemName: "heart")
                                    }

                                    // 评论内容
                                    HStack {
                                        Text("评论内容\(index)")
                                            .SetTextStyle(size: 16, color: .black.opacity(0.8))
                                        Text("3天前 浙江")
                                            .SetTextStyle(size: 12, color: .black.opacity(0.6))
                                    }
                                }
                            }
                        }
                    }
                    .padding(.top, 8)
                }
                .padding(.horizontal, 8)
            }

            // 底部操作栏
            HStack {
                Button {} label: {
                    HStack {
                        Image(systemName: "pencil")
                            .foregroundStyle(.gray)
                            .font(.system(size: 15))
                        Text("说点什么...")
                            .SetTextStyle(size: 15, color: .gray)
                    }
                    .padding(.vertical, 6)
                    .padding(.horizontal, 22)
                    .background(.gray.opacity(0.1), in: RoundedRectangle(cornerRadius: 20))
                }
                .foregroundStyle(.black)

                Spacer()

                HStack {
                    HStack {
                        Button {} label: {
                            Image(systemName: "heart")
                            Text("61")
                        }
                    }
                    HStack {
                        Button {} label: {
                            Image(systemName: "star")
                            Text("12")
                        }
                    }
                    HStack {
                        Button {} label: {
                            Image(systemName: "message")
                            Text("评论")
                        }
                    }
                }
                .foregroundStyle(.black)
                .font(.system(size: 15))
            }
            .padding(.horizontal, 14)
            .padding(.top, 2)
        }
        .background(.white)
        // 监听页面显示
        .onAppear {
            print("页面显示了")
        }
        .gesture(
            DragGesture()
                .onChanged { dragValue in
                    dragValues = Int(dragValue.location.x)

                    if dragValues > 100 {
                        print("123")
                    }
                }
        )
//        }
//        .toolbar(.hidden)
    }
}

#Preview {
    ArticleDetailView(isShowArticleDetail: .constant(false))
}
