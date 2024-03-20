//
//  TabbarView.swift
//  small-red-book
//
//  Created by 田宇浩 on 2024/3/14.
//
//  底部导航栏切换
//

import SwiftUI

struct TabbarView: View {
    @Binding var active: Selection
    
    var body: some View {
        HStack {
            Spacer()
            
            Button {
                withAnimation(.linear(duration: 0.1)) {
                    active = .home
                }
            } label: {
                Text("首页")
                    .SetTextStyle(size: 16, color: active == .home ? .black : .gray)
            }
            
            Spacer()
            
            Button {
                active = .sopping
            } label: {
                Text("购物")
                    .SetTextStyle(size: 16, color: active == .sopping ? .black : .gray)
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
                    .SetTextStyle(size: 16, color: active == .message ? .black : .gray)
            }
      
            Spacer()
            
            Button {
                withAnimation(.linear(duration: 0.1)) {
                    active = .mine
                }
            } label: {
                Text("我")
                    .SetTextStyle(size: 16, color: active == .mine ? .black : .gray)
            }
            
            Spacer()
        }
        .foregroundStyle(.black)
    }
}

// #Preview {
//    TabbarView()
// }
