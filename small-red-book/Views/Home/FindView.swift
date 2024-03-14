//
//  FindView.swift
//  small-red-book
//
//  Created by Tyh2001 on 2024/3/13.
//
//  发现模块
//

import SwiftUI

struct FindView: View {
    @State var tags: [String] = ["推荐", "视频", "直播", "穿搭", "汽车", "壁纸", "头条", "健身器材", "旅行","推荐", "视频", "直播", "穿搭", "汽车", "壁纸", "头条", "健身器材", "旅行",]
    
    var body: some View {
        VStack {
            ScrollView (.horizontal, showsIndicators: false) { 
                HStack{
               
                    ForEach(0..<tags.count) {index in
                        Button {
                            
                        }label: {
                            Text(tags[index])
                        }
                    }
                }
            }
            ScrollView {
                HStack(alignment: .top, spacing: 4) {
                    VStack {
                        Card(banner: "image-1", title: "风景很不错", avatar: "avatar", userName: "张三")
                        Card(banner: "image-3", title: "看看我的车", avatar: "avatar", userName: "李四")
                        Card(banner: "image-4", title: "有绵羊啊", avatar: "avatar", userName: "奇怪")
                    }
                    VStack {
                        Card(banner: "image-2", title: "我的独家记忆", avatar: "avatar", userName: "赵六")
                        Card(banner: "image-1", title: "风景很不错", avatar: "avatar", userName: "张三")
                        Card(banner: "image-3", title: "看看我的车", avatar: "avatar", userName: "李四")
                    }
                }
                .background(.gray.opacity(0.1))
            }
        }
    }
}

#Preview {
    FindView()
}
