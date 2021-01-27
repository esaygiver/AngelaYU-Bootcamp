//
//  ContentView.swift
//  H4X0R News
//
//  Created by admin on 1.11.2020.
//  Copyright © 2020 esaygiver. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                    
                }
            }
            .navigationBarTitle("H4X0R NEWS")
            .foregroundColor(.black)
        }
            //like viewDidLoad
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



//let posts = [
//        Post(id: "1", title: "selam"),
//        Post(id: "2", title: "hello"),
//        Post(id: "3", title: "hola")
//        ]
