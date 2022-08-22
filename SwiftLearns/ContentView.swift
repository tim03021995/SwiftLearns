//
//  ContentView.swift
//  SwiftLearns
//
//  Created by Alvin Tseng on 2022/8/18.
//

import SwiftUI

struct ContentView: View {
    let en = EN.shard
    var body: some View {
        ZStack {
            Image("mainWallpaper").resizable()
                .scaledToFill()
                .frame(minWidth: 0,  maxWidth: .infinity, minHeight: 0,  maxHeight: .infinity)
                .ignoresSafeArea()
            VStack {
                Text("Topic").font(.largeTitle).foregroundColor(.white).fontWeight(.bold)
                
                ScrollView {
                    LazyVStack(alignment: .leading) {
                        Button(en.mainListTitle.first!) {
                            
                        }.frame(width: 100,height: 100).padding().background(RoundedRectangle(cornerRadius: 20).fill(Material.ultraThinMaterial)).foregroundColor(.buttonTextColor)
                    }
                }.frame(width: .infinity, height: .infinity)
            }.padding(10)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
