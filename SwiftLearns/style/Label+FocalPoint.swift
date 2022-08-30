//
//  Text+FocalPoint.swift
//  SwiftLearns
//
//  Created by Alvin Tseng on 2022/8/24.
//

import SwiftUI

struct  FocalPointStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.title.foregroundColor(.red).fontWeight(.bold).cornerRadius(8).background(.gray)
    }
}

