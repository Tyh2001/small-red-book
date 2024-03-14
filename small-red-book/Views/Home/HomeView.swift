//
//  HomeView.swift
//  small-red-book
//
//  Created by Tyh2001 on 2024/3/13.
//

import SwiftUI

struct HomeView: View {
    @State var active = 1

    var body: some View {
        NavigationView {
            VStack {
                // 头部 tab 切换
                HStack(spacing: 30) {
                    Button {} label: {
                        Image(systemName: "sun.max")
                    }

                    Spacer()

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

                    Spacer()

                    Button {} label: {
                        Image(systemName: "magnifyingglass")
                    }
                }
                .padding(.horizontal, 20)

                // 身体内容
                TabView(selection: $active) {
                    // 关注
                    FollowView()
                        .tag(1)

                    // 发现
                    FindView()
                        .tag(2)

                    // 附近
                    VicinityView()
                        .tag(3)
                }
                .tabViewStyle(.page(indexDisplayMode: .never))

                //  底部切换
                Tabbar()
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    HomeView()
}
