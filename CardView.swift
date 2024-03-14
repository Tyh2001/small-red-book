//
//  CardView.swift
//  small-red-book
//
//  Created by 田宇浩 on 2024/3/14.
//
//  首页瀑布流布局卡片
//

import SwiftUI

struct CardView: View {
    var banner: String
    var title: String
    var avatar: String
    var userName: String

    var body: some View {
        VStack(alignment: .leading) {
            Image(banner)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: UIScreen.main.bounds.width / 2 - 22)

            Text(title)
            HStack {
                Image(avatar)
                    .CircleImage(size: 18)
                Text(userName)
                Spacer()
                Image(systemName: "heart")
            }
        }
        .padding(4)
        .cornerRadius(8)
        .background(.white)
    }
}
