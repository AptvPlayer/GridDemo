//
//  ContentView.swift
//  AppTV
//
//  Created by ting.liu on 11/3/22.
//

import SwiftUI

struct ContentView: View {
    
    var columns: [GridItem] = Array(repeating: .init(.flexible()), count: 4)
    
    var body: some View {
        ScrollView {
            VStack {
                LazyVGrid(columns: columns, spacing: 25) {
                    ForEach(1..<100, id: \.self) { channel in
                        PosterView()
                            .frame(width: ContentView.getItemWidth(), height: ContentView.getItemHeight())
                    }
                }
            }
            .padding(.leading, 50)
            .padding(.trailing, 50)
        }
        .ignoresSafeArea(edges: .leading)
        .ignoresSafeArea(edges: .trailing)
    }
    
    static func getItemWidth() -> CGFloat {
        let width = UIScreen.main.bounds.size.width / 4
        return width
    }
    
    static func getItemHeight() -> CGFloat {
        let width = self.getItemWidth()
        return width / (16 / 9)
    }
}

