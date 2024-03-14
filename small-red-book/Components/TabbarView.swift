//
//  TabbarView.swift
//  small-red-book
//
//  Created by 田宇浩 on 2024/3/14.
//
//  底部导航栏切换
//

enum Selection {
    case home
    case sopping
    case message
    case mine
}

import SwiftUI

struct TabbarView: View {
    @State var active: Selection = .home
    
    var body: some View {
        HStack {
            Spacer()
            Button {
                active = .home
            } label: {
                Text("首页")
                    .foregroundStyle(active == .home ? .blue : .black)
            }
            
            Spacer()
            
            Button {
                active = .sopping
            } label: {
                Text("购物")
                    .foregroundStyle(active == .sopping ? .blue : .black)
            }
            
            Spacer()
            
            Button {} label: {
                Image(systemName: "plus")
                    .padding(.horizontal, 12)
                    .padding(.vertical, 6)
                    .foregroundStyle(.white)
                    .background(.red, in: RoundedRectangle(cornerRadius: 8))
            }
            
            Spacer()
            
         
                Button {
                    active = .message
                } label: {
                    NavigationLink(destination: MessageView()) {
                        
                 
                    Text("消息")
                        .foregroundStyle(active == .message ? .blue : .black)
                    }   }
      
            
            Spacer()
            
            Button {
                active = .mine
            } label: {
                Text("我")
                    .foregroundStyle(active == .mine ? .blue : .black)
            }
            
            Spacer()
        }
        .foregroundStyle(.black)
    }
}

#Preview {
    TabbarView()
}
