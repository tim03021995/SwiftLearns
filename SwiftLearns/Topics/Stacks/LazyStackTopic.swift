//
//  LazyStackTopic.swift
//  SwiftLearns
//
//  Created by Alvin Tseng on 2022/8/24.
//

import Foundation
import SwiftUI

struct LazyStackTopicView: View {
    var body: some View {
        ScrollView{
            LazyVStack (alignment: .leading, spacing: 5){
                Text("LazyStackView closer look").font(.largeTitle).fontWeight(.bold)
                Introduction()
                Spacer(minLength: 10)
                DifferentTopic()
                Spacer()
            }.padding(30)
        }
    }
}


private struct Introduction: View {
    @State private var showingTopic = false
    @State private var showingTopic2 = false
    var body: some View {
        Text("Introduction").font(.title)
        Text("LazyVStack is a container view which is used to layout child views in vertical order, just like VStack. ‘Lazy’ keyword distinguishes LazyVStack from VStack.")
        Text("VStack 一但初始化，就會立即顯示在螢幕上。包含記憶體的寫入以及渲染，LazyVStackView 只會渲染在螢幕是可視範圍內的物件，這可以讓渲染的效能更高")
         Text("我們可以觀察下面兩個測試的程式碼，他會將該物件渲染的時間打印出來。")
         HStack(alignment: .top, spacing: 10) {
             Button("VStack") {
                 showingTopic.toggle()
             }.frame(width: 100, height: 100).padding().background(RoundedRectangle(cornerRadius: 20).fill(Material.ultraThinMaterial)).foregroundColor(.buttonTextColor).sheet(isPresented: $showingTopic) {
                 LazyVStackExample1()
             }
             Button("LazyVStack") {
                 showingTopic2.toggle()
             }.frame(width: 100, height: 100).padding().background(RoundedRectangle(cornerRadius: 20).fill(Material.ultraThinMaterial)).foregroundColor(.buttonTextColor).sheet(isPresented: $showingTopic2) {
                 LazyVStackExample2()
             }
         }
    }
}

private struct DifferentTopic: View {
    @State private var showingTopic = false
    @State private var showingTopic2 = false
    var body: some View {
        Text("What's different between VStack and LazyVStack").font(.title)
        Text("VStack 只會佔用所需要的空間，而 LazyVStack 則會填充整個畫面。")
        HStack(alignment: .top, spacing: 10) {
            Button("Sample Code") {
                showingTopic.toggle()
            }.frame(width: 100, height: 100).padding().background(RoundedRectangle(cornerRadius: 20).fill(Material.ultraThinMaterial)).foregroundColor(.buttonTextColor).sheet(isPresented: $showingTopic) {
                LazyVStackExample3()
            }
            Button("LazyVStack") {
                showingTopic2.toggle()
            }.frame(width: 100, height: 100).padding().background(RoundedRectangle(cornerRadius: 20).fill(Material.ultraThinMaterial)).foregroundColor(.buttonTextColor).sheet(isPresented: $showingTopic2) {
                LazyVStackExample5()
            }
        }
        Text("")
    }

}

struct Previews_LazyStackTopic_Previews: PreviewProvider {
    static var previews: some View {
        LazyStackTopicView()
    }
}

struct LazyVStackExample1: View {
    
    let dateFormatter: DateFormatter = {
            let formatter = DateFormatter()
            formatter.dateFormat = "HH:mm:ss z"
            return formatter
        }()
    
    var body: some View {
        ScrollView {
        VStack {
                ForEach(1...200, id: \.self) { _ in
                    Text(Date(), formatter: dateFormatter)
                }
            }
        }
    }
}

struct LazyVStackExample2: View {
    
    let dateFormatter: DateFormatter = {
            let formatter = DateFormatter()
            formatter.dateFormat = "HH:mm:ss z"
            return formatter
        }()
    
    var body: some View {
        ScrollView {
        LazyVStack {
                ForEach(1...200, id: \.self) { _ in
                    Text(Date(), formatter: dateFormatter)
                }
            }
        }
    }
}

struct LazyVStackExample3: View {
    
    var body: some View {
        VStack(spacing: 50) {
            Text ("VStack Example")
                .bold()
            
            VStack(spacing: 20) {
                Text("DevTechie Courses")
                    .font(.largeTitle)
                Text("Video Courses on iOS")
            }
            .foregroundColor(.white)
            .padding()
            .background(RoundedRectangle(cornerRadius: 20).fill(Color.orange))
            
            
            Text ("LazyVStack Example")
                .bold()
            LazyVStack(spacing: 20) {
                Text("DevTechie Courses")
                    .font(.largeTitle)
                Text("Video Courses on iOS")
            }
            .foregroundColor(.white)
            .padding()
            .background(RoundedRectangle(cornerRadius: 20).fill(Color.orange))
            
        }
    }
}

struct LazyVStackExample5: View {
    
    @State private var alignmentProp: HorizontalAlignment = .center
    
    var body: some View {
        VStack {
            Text("VStack")
                .bold()
                .font(.largeTitle)
            
            VStack(alignment: alignmentProp) {
                Capsule()
                    .fill(.orange)
                    .frame(width: 100, height: 50)
                
                Capsule()
                    .fill(.teal)
                    .frame(width: 200, height: 50)
                
                Capsule()
                    .fill(.mint)
                    .frame(height: 50)
                
                
            }
            .padding()
            .animation(.easeInOut, value: alignmentProp)
            
            Text("LazyVStack")
                .bold()
                .font(.largeTitle)
            
            LazyVStack(alignment: alignmentProp) {
                Capsule()
                    .fill(.orange)
                    .frame(width: 50, height: 50)
                
                Capsule()
                    .fill(.teal)
                    .frame(width: 100, height: 50)
                
                Capsule()
                    .fill(.mint)
                    .frame(width: 150, height: 50)
                
                
            }
            .padding()
            .animation(.easeInOut, value: alignmentProp)
            
            HStack {
                Button("Leading") {
                    alignmentProp = .leading
                }
                
                Button("Center") {
                    alignmentProp = .center
                }
                
                Button("Trailing") {
                    alignmentProp = .trailing
                }
            }
        }
    }
}
