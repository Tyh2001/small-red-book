//
//  TextStyle.swift
//  small-red-book
//
//  Created by 田宇浩 on 2024/3/14.
//
//  修饰 Text 组件的样式
//

import SwiftUI

extension Text {
    func SetTextStyle(size: CGFloat, color: Color) -> some View {
        self
            .font(.system(size: size))
            .foregroundStyle(color)
    }
}
