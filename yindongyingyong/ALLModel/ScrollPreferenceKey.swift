//
//  ScrollPreferenceKey.swift
//  yindongyingyong
//
//  Created by 程鹏帆 on 2023/4/28.
//

import SwiftUI


struct ScrollPreferenceKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}
