//
//  SwiftUIView.swift
//  SwiftLearns
//
//  Created by Alvin Tseng on 2022/8/30.
//

import SwiftUI

struct NavigationDestinationSimple: View {
    var body: some View {
        NavigationStack {
            List {
                Image("NavigationStack_SampleCode_2").resizable().scaledToFit()
                Text("搭配List的使用方式")
                NavigationLink("Mint", value: Color.mint)
                NavigationLink("Pink", value: Color.pink)
                NavigationLink("Teal", value: Color.teal)
            }
            .navigationDestination(for: Color.self) { color in
                ColorDetail(color: color)
            }
            .navigationTitle("Colors")
        }
    }
}

struct NavigationDestinationSimple_Previews: PreviewProvider {
    static var previews: some View {
        NavigationDestinationSimple()
    }
}

struct ColorDetail: View {
    var color: Color
    var body: some View {
        color
    }
}
