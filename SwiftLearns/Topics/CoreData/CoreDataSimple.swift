//
//  CoreDataSimple.swift
//  SwiftLearns
//
//  Created by Alvin Tseng on 2022/8/31.
//

import SwiftUI

struct CoreDataSimple: View {
    @State private var presentAlert = false
    var body: some View {
        NavigationStack {
            List {
//                Image("NavigationStack_SampleCode_2").resizable().scaledToFit()
//                Text("搭配List的使用方式")
                NavigationLink("Mint", value: Color.mint)
                NavigationLink("Pink", value: Color.pink)
                NavigationLink("Teal", value: Color.teal)

            }
            .navigationDestination(for: Color.self) { color in
                ColorDetail(color: color)
            }
            .navigationTitle("The List")
            .toolbar {

                Button {
                    presentAlert = true
                } label: {
                    Image(uiImage: .add)
                }.alert("New Name", isPresented: $presentAlert, actions: {
                    TextField("", text: .constant(""))
                    Button("Save", action: {
                    
                    })
                    Button("Cancel", role: .cancel, action: {})
                }, message: {
                    Text("Add a new Name")
                })
            }
        }
    }
}

struct CoreDataSimple_Previews: PreviewProvider {
    static var previews: some View {
        CoreDataSimple()
    }
}
