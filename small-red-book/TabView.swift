//
//  TabView.swift
//  small-red-book
//
//  Created by Tyh2001 on 2024/3/13.
//

import SwiftUI

struct TabDemoView: View {
    @State var active = 0
    
    var body: some View {
        NavigationView {
            VStack {
                TabView(selection: $active) {
                    ScrollView {
                        Text("第0页")
                    }.tag(0)
                    
                    ScrollView {
                        Text("第1页")
                    }.tag(1)
                    
                    ScrollView {
                        Text("第2页")
                    }.tag(2)
                }
                .tabViewStyle(.page)
            }
        }
    }
}

#Preview {
    TabDemoView()
}
