//
//  Stacks.swift
//  SwiftLearns
//
//  Created by Alvin Tseng on 2022/8/22.
//

import Foundation
import SwiftUI

struct StackAndGroupView: View {
    let topic = StacksTopic.shard
    var body: some View {
        ScrollView{
            VStack (alignment: .leading, spacing: 5){
                
                Text(topic.title).font(.largeTitle).fontWeight(.bold)
                Introduction()
                Spacer(minLength: 10)
                InitTopic()
        

                
                Spacer()
            }.padding(30)
        }
    }
}

struct Previews_StacksTopic_Previews: PreviewProvider {
    static var previews: some View {
        StackAndGroupView()
    }
}

private struct Introduction: View {
    let topic = StacksTopic.shard
    var body: some View {
        
       Text(topic.subTitles[0]).font(.title)
       Text(topic.descriptions[0])
       Text("Unlike ") +
       Text("LazyVStack").foregroundColor(.red).fontWeight(.bold) +
       Text(", which only renders the views when your app needs to display them onscreen, a ") +
       Text("VStack").foregroundColor(.red).fontWeight(.bold) +
       Text(" renders the views all at once, regardless of whether they are on- or offscreen. Use the regular") +
       Text("VStack").foregroundColor(.red).fontWeight(.bold) +
       Text(" when you have a small number of child views or don’t want the delayed rendering behavior of the “lazy” version.")
       Text("Sample Code").font(.title2)
       Image("Stacks_SampleCode_1").resizable().scaledToFit()
       Text("Sample Code").font(.title2)
       StackSampleCodeView()
    }
}

private struct InitTopic: View {
    var body: some View {
        Text("init(alignment:spacing:content:)").font(.title)
        Text("Creates an instance with the given spacing and horizontal alignment.")
        Text("Declaration").font(.title2)
        Image("Stacks_SampleCode_2").resizable().scaledToFit()
        Text("Parameters").font(.title)
        Text("1. alignment: The guide for aligning the subviews in this stack. All child views have the same horizontal screen coordinate.")
        Text("2. spacing: The distance between adjacent subviews, or `nil` if you want the stack to choose a default distance for each pair of subviews.")
        Text("3. pinnedViews: The kinds of child views that will be pinned.")
        Text("4. content: A view builder that creates the content of this stack.")
    }

}

private struct StackSampleCodeView: View {
    var body: some View {
        VStack(
            alignment: .leading,
            spacing: 10
        ) {
            ForEach(
                1...10,
                id: \.self
            ) {
                Text("Item \($0)")
            }
        }.frame(width: 300, height: 300).background(.secondary)
    }
}
