//
//  ArticleCardView.swift
//  small-red-book
//
//  Created by 田宇浩 on 2024/3/14.
//
//  关注发布的动态卡片
//


import SwiftUI

struct ArticleCardView: View {
    // 评论的内容
    @State var comment = ""
    
    var body: some View {
        VStack {
            // 用户头像和信息
            HStack {
                Image("avatar")
                    .CircleImage(size: 33)
                Text("用户名")
                Text("6天前")
                
                Spacer()
                
                Button {} label: {
                    Image(systemName: "ellipsis")
                        .foregroundStyle(.black)
                }
            }
            .padding(.horizontal, 12)
            
            // 发布的内容图片
            Image("image-1")
                .resizable()
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width)
                .aspectRatio(contentMode: .fill)
                .clipped()
            
            // 操作栏
            HStack {
                Button {} label: {
                    Image(systemName: "square.and.arrow.up")
                }
                
                Spacer()
                
                HStack {
                    HStack {
                        Button {} label: {
                            Image(systemName: "heart")
                            Text("61")
                        }
                    }
                    HStack {
                        Button {} label: {
                            Image(systemName: "star")
                            Text("12")
                        }
                    }
                    HStack {
                        Button {} label: {
                            Image(systemName: "message")
                            Text("43")
                        }
                    }
                }
            }
            .padding(.horizontal, 12)
            .foregroundStyle(.black)
            .font(.system(size: 18))
            
            // 发布的文案内容
            HStack {
                Text("这是一段主体内容，今天真是一个很不错。这是一段主体内容，今天真是一个很不错")
                    .multilineTextAlignment(.leading)
            }
            .padding(.top, 3)
            
            // 评论框
            HStack {
                Image("avatar")
                    .CircleImage(size: 20)
                TextField("喜欢就给个评论支持一下", text: $comment)
                
                Text("😊")
                Text("😧")
                Text("😠")
            }
           
            .padding(.vertical, 6)
            .padding(.horizontal, 6)
            .background(.gray.opacity(0.04), in: RoundedRectangle(cornerRadius: 25.0))
            .padding(.horizontal, 12)
        }
    }
}

#Preview {
    ArticleCardView()
}
