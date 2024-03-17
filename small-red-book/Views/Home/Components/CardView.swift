//
//  Card.swift
//  small-red-book
//
//  Created by 田宇浩 on 2024/3/13.
//

import SwiftUI

struct CardView: View {
    var banner: String
    var title: String
    var avatar: String
    var userName: String

    var body: some View {
        VStack(alignment: .leading) {
            // 图片
            Image(banner)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: .infinity)
            // .matchedGeometryEffect(id: "articleBanner", in: namespace)

            VStack(alignment: .leading) {
                Text(title)
                    .SetTextStyle(size: 15, color: .black.opacity(0.9))

                HStack {
                    Image(avatar)
                        .CircleImage(size: 16)
                    Text(userName)
                        .SetTextStyle(size: 13, color: .gray)
                    Spacer()
                    Group {
                        Image(systemName: "heart")
                        Text("1246")
                    }
                    .foregroundStyle(.gray)
                    .font(.system(size: 14))
                }
            }
            .padding(.horizontal, 8)
            .padding(.vertical, 4)
            .padding(.bottom, 8)
        }
        .cornerRadius(3)
        .background(.white)
    }
}
