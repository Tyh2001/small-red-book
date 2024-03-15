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
                withAnimation(.linear(duration: 0.1)) {
                    active = .home
                }
            } label: {
                Text("首页")
                    .SetTextStyle(size: active == .home ? 17 : 15, color: active == .home ? .black : .gray)
            }
            
            Spacer()
            
            Button {
                withAnimation(.linear(duration: 0.1)) {
                    active = .sopping
                }
            } label: {
                Text("购物")
                    .SetTextStyle(size: active == .sopping ? 17 : 15, color: active == .sopping ? .black : .gray)
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
                withAnimation(.linear(duration: 0.1)) {
                    active = .message
                }
            } label: {
                Text("消息")
                   
                    .SetTextStyle(size: active == .message ? 17 : 15, color: active == .message ? .black : .gray)
            }
      
            Spacer()
            
            Button {
                withAnimation(.linear(duration: 0.1)) {
                    active = .mine
                }
            } label: {
                Text("我")
                    .SetTextStyle(size: active == .mine ? 17 : 15, color: active == .mine ? .black : .gray)
            }
            
            Spacer()
        }
        .foregroundStyle(.black)
    }
}

#Preview {
    TabbarView()
}
