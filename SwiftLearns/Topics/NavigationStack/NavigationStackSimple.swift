//
//  NavigationStackSimple.swift
//  SwiftLearns
//
//  Created by Alvin Tseng on 2022/8/30.
//

import SwiftUI

struct NavigationStackSimple: View {
    var body: some View {
        NavigationStack {
            Text("How to use NavigationStack?").font(.title)
            NavigationLink {
                Image("NavigationStack_SampleCode_1").resizable().scaledToFit()
                Text("Destination Screen")
            } label: {
                Text("最簡單的NavigationStack 使用方式")
            }
            Text("另外NavigationStack 可以透過Destination傳遞參數").font(.title)
            Text("請點擊嘗試看看")
            NavigationLink {
                NavigationDestinationSimple()
            } label: {
                Text("NavigationDestinationSimple")
            }
            NavigationLink {
                NavigationPath()
            } label: {
                Text("NavigationPath")
            }

        }
    }
}

struct NavigationStackSimple_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStackSimple()
    }
}
