//
//  ContentView.swift
//  HackerNews
//
//  Created by everis on 3/01/21.
//  Copyright © 2021 Irwin Oporto. All rights reserved.
//

import Foundation
import SwiftUI

struct ContentView: View {
    
  @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView{
            List(networkManager.posts) { post in
                
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }.navigationBarTitle("H4X0R NEWS")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



