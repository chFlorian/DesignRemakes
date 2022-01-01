//
//  RedditView.swift
//  DesignRemakes
//
//  Created by Florian Schweizer on 21.12.21.
//

import SwiftUI

struct RedditView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        TabView {
            HomeFeed()
                .tabItem {
                    Image(systemName: "house")
                }
                .tag(0)
            
            Text("Explore")
                .tabItem {
                    Image(systemName: "square.grid.2x2")
                }
                .tag(0)
            
            Text("plus")
                .tabItem {
                    Image(systemName: "plus")
                }
                .tag(0)
            
            Text("messages")
                .tabItem {
                    Image(systemName: "text.bubble")
                }
                .tag(0)
            
            
            Text("Notifications")
                .tabItem {
                    Image(systemName: "bell")
                }
                .tag(0)
        }
    }
}

struct RedditView_Previews: PreviewProvider {
    static var previews: some View {
        RedditView()
            .preferredColorScheme(.dark)
    }
}
