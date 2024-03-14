//
//  Card.swift
//  small-red-book
//
//  Created by 田宇浩 on 2024/3/13.
//

import SwiftUI

struct Card: View {
    var banner: String
    var title: String
    var avatar: String
    var userName :String
    
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

//#Preview {
//    Card(size: 20)
//}
