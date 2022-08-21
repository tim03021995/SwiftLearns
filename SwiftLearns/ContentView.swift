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
            LazyVStack {
                Text("Topic").font(.largeTitle).foregroundColor(.white).fontWeight(.bold)
                ScrollView {
                    LazyVStack(alignment: .leading) {
                        Button(en.mainListTitle.first!) {
                            
                        }.padding().background(RoundedRectangle(cornerRadius: 20).fill(Material.ultraThinMaterial))
                    }.padding().background(RoundedRectangle(cornerRadius: 20).fill(Material.ultraThinMaterial))
                }
                Spacer()
            }.padding(10)
        }.background(Image("galaxy-wallpaper"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
