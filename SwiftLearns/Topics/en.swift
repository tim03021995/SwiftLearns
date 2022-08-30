//
//  en.swift
//  SwiftLearns
//
//  Created by Alvin Tseng on 2022/8/20.
//

import Foundation

struct EN {
    static let shard = EN()
    let mainListTitle:[String] = ["Stack And Group"]
}

struct StacksTopic {
    static let shard = StacksTopic()
    let title = "Stack And Group"
    let subTitles = ["VStack"]
    let descriptions = ["A view that arranges its children in a vertical line."]
    let contentText = ["Unlike `LazyVStack`, which only renders the views when your app needs to display them onscreen, a `VStack` renders the views all at once, regardless of whether they are on- or offscreen. Use the regular `VStack` when you have a small number of child views or don’t want the delayed rendering behavior of the “lazy” version."]
}
