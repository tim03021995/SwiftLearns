//
//  ContentView.swift
//  SwiftLearns
//
//  Created by Alvin Tseng on 2022/8/18.
//

import SwiftUI

struct ContentView: View {
    @State private var showingTopic = false
    @State private var showingTopic2 = false
    @State private var showingTopic3 = false
    @State private var coreDataSimple = false
    @State private var coreData = false
    let en = EN.shard
    var body: some View {
        ZStack {
            Image("mainWallpaper").resizable()
                .scaledToFill()
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                .ignoresSafeArea()
            VStack (){
                Text("Topic").font(.largeTitle).foregroundColor(.white).fontWeight(.bold)
                ScrollView {
                    LazyVStack(alignment: .leading,spacing: 20) {
                        LazyHStack(alignment: .top,spacing: 20) {
                            Button("VStack") {
                                showingTopic.toggle()
                            }.frame(width: 100, height: 100).padding().background(RoundedRectangle(cornerRadius: 20).fill(Material.ultraThinMaterial)).foregroundColor(.buttonTextColor).sheet(isPresented: $showingTopic) {
                                StackAndGroupView()
                            }
                            Button("LazyVStack") {
                                showingTopic2.toggle()
                            }.frame(width: 100, height: 100).padding().background(RoundedRectangle(cornerRadius: 20).fill(Material.ultraThinMaterial)).foregroundColor(.buttonTextColor).sheet(isPresented: $showingTopic2) {
                                LazyStackTopicView()
                            }
                            
                            Button("ZStack") {
                                showingTopic.toggle()
                            }.frame(width: 100, height: 100).padding().background(RoundedRectangle(cornerRadius: 20).fill(Material.ultraThinMaterial)).foregroundColor(.buttonTextColor).sheet(isPresented: $showingTopic) {
                                StackAndGroupView()
                            }
                            
                            Button("NavigationStack"){
                                showingTopic.toggle()
                            }.frame(width: 100, height: 100).padding().background(RoundedRectangle(cornerRadius: 20).fill(Material.ultraThinMaterial)).foregroundColor(.buttonTextColor).sheet(isPresented: $showingTopic) {
                                StackAndGroupView()
                            }
                            
                            Button("CoreData"){
                                coreData.toggle()
                            }.frame(width: 100, height: 100).padding().background(RoundedRectangle(cornerRadius: 20).fill(Material.ultraThinMaterial)).foregroundColor(.buttonTextColor).sheet(isPresented: $coreData) {
                                CoreDataBook()
                            }
                            
                            
                        }
                        LazyHStack(alignment: .top,spacing: 20) {
                            
                            Button("CoreDataSimple"){
                                coreDataSimple.toggle()
                            }.frame(width: 100, height: 100).padding().background(RoundedRectangle(cornerRadius: 20).fill(Material.ultraThinMaterial)).foregroundColor(.buttonTextColor).sheet(isPresented: $coreDataSimple) {
                                CoreDataSimple()
                            }
                            
                            
                        }
                    }
                }
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
