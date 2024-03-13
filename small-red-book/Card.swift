//
//  Card.swift
//  small-red-book
//
//  Created by 田宇浩 on 2024/3/13.
//

import SwiftUI

struct Card: View {
    var size: Int
    var banner: String
    var title: String
    var avatar: String
    var userName :String
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(banner)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: CGFloat(self.size))
            
            Text(title)
            HStack {
                Image(avatar)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 18,height: 18)
                    .mask(Circle())
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

//#Preview {
//    Card(size: 20)
//}
