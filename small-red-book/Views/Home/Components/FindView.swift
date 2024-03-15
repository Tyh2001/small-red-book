//
//  FindView.swift
//  small-red-book
//
//  Created by Tyh2001 on 2024/3/13.
//
//  发现模块
//

import SwiftUI

struct FindView: View {
    @State var tags: [String] = ["推荐", "视频", "直播", "穿搭", "汽车", "壁纸", "头条", "健身器材", "旅行", "推荐", "视频", "直播", "穿搭", "汽车", "壁纸", "头条", "健身器材", "旅行"]
    @State var tagActiveIndex = 0 // 标签选中的索引
    @State var isShowPopup = false // 是否显示对话框
    @Binding var isShowArticleDetail: Bool // 是否显示动态详情视图
    var namespace: Namespace.ID

    var body: some View {
        ZStack {
            // 主视图
            VStack {
                if isShowPopup {
                    // 选择频道的弹出层
                    NavBarPopupView(isShowPopup: $isShowPopup)
                } else {
                    // 顶部切换滑动标题
                    NavBarView(tags: $tags, tagActiveIndex: $tagActiveIndex, isShowPopup: $isShowPopup)
                }

                // 主要内容部分
                TabView(selection: $tagActiveIndex) {
                    ForEach(tags.indices, id: \.self) { index in
                        ScrollView {
                            HStack(alignment: .top, spacing: 4) {
                                VStack {
                                    CardView(banner: "image-1", title: "风景很不错\(index)", avatar: "avatar", userName: "张三", namespace: namespace)
                                        .onTapGesture {
                                            withAnimation {
                                                isShowArticleDetail.toggle()
                                            }
                                        }
                                    CardView(banner: "image-3", title: "风景很不错\(index)", avatar: "avatar", userName: "张三", namespace: namespace)
                                        .onTapGesture {
                                            withAnimation {
                                                isShowArticleDetail.toggle()
                                            }
                                        }
                                    CardView(banner: "image-4", title: "风景很不错\(index)", avatar: "avatar", userName: "张三", namespace: namespace)
                                        .onTapGesture {
                                            withAnimation {
                                                isShowArticleDetail.toggle()
                                            }
                                        }
                                    CardView(banner: "image-2", title: "风景很不错\(index)", avatar: "avatar", userName: "张三", namespace: namespace)
                                        .onTapGesture {
                                            withAnimation {
                                                isShowArticleDetail.toggle()
                                            }
                                        }
                                }
                                VStack {
                                    CardView(banner: "image-2", title: "风景很不错\(index)", avatar: "avatar", userName: "张三", namespace: namespace)
                                        .onTapGesture {
                                            withAnimation {
                                                isShowArticleDetail.toggle()
                                            }
                                        }
                                    CardView(banner: "image-1", title: "风景很不错\(index)", avatar: "avatar", userName: "张三", namespace: namespace)
                                        .onTapGesture {
                                            withAnimation {
                                                isShowArticleDetail.toggle()
                                            }
                                        }
                                    CardView(banner: "image-3", title: "风景很不错\(index)", avatar: "avatar", userName: "张三", namespace: namespace)
                                        .onTapGesture {
                                            withAnimation {
                                                isShowArticleDetail.toggle()
                                            }
                                        }
                                    CardView(banner: "image-3", title: "风景很不错\(index)", avatar: "avatar", userName: "张三", namespace: namespace)
                                        .onTapGesture {
                                            withAnimation {
                                                isShowArticleDetail.toggle()
                                            }
                                        }
                                }
                            }
                            .background(.gray.opacity(0.04))
                            .padding(.horizontal, 4)
                        }
                        .tag(index)
                    }
                }
                .tabViewStyle(.page(indexDisplayMode: .never))
            }
            // 动态详情视图
            if isShowArticleDetail {
                ArticleDetailView(isShowArticleDetail: $isShowArticleDetail, namespace: namespace)
            }
        }
    }
}

// #Preview {
//    FindView(isShowArticleDetail: .constant(false))
// }
