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
        VStack {
            Text("Topic").font(.largeTitle)
            ScrollView {
                LazyVStack(alignment: .leading) {
                    Button(en.mainListTitle.first!) {
                        
                    }
                }.padding(.leading)
            }
        }


    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
