//
//  TabbarLayoutView.swift
//  small-red-book
//
//  Created by Tyh2001 on 2024/3/20.
//
//  首页模板
//

import SwiftUI

enum Selection {
    case home
    case sopping
    case message
    case mine
}

struct TabbarLayoutView: View {
    @State var active: Selection = .home

    var body: some View {
        if active == .home {
            HomeView()
        }
        else if active == .sopping {
            ShoppingView()
        }
        else if active == .message {
            MessageView()
        }
        else if active == .mine {
            MineView()
        }

        //  底部切换
        TabbarView(active: $active)
    }
}

#Preview {
    TabbarLayoutView()
        .environmentObject(CardDataModel()) // 环境变量
}
