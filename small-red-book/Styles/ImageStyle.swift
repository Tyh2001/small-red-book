//
//  ImageStyle.swift
//  small-red-book
//
//  Created by 田宇浩 on 2024/3/14.
//
//  修饰 Image 组件的样式
//

import SwiftUI

extension Image {
    func CircleImage(size: CGFloat) -> some View {
        self
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: size, height: size)
            .mask(Circle())
    }
}
