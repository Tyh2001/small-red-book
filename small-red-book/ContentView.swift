//
//  ContentView.swift
//  small-red-book
//
//  Created by 田宇浩 on 2024/3/13.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabbarLayoutView()
    }
}

#Preview {
    ContentView()
        .environmentObject(CardDataModel()) // 环境变量
}
