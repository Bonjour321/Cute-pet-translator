//
//  CourseModifier.swift
//  yindongyingyong
//
//  Created by 程鹏帆 on 2023/4/28.

import SwiftUI

struct OutlineModifier: ViewModifier {
    var cornerRadius: CGFloat = 20
    
    @Environment(\.colorScheme) var colorScheme
    func body(content: Content) -> some View {
        content
            .overlay(
            RoundedRectangle(cornerRadius: cornerRadius)
            .stroke(
                .linearGradient(
                    colors: [
                        .white.opacity(colorScheme == .dark ? 0.1 : 0.3),
                        .black.opacity(0.1)],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                )
            )
        )
    }
}

extension View{
    func outlineModifier(cornerRadius: CGFloat) -> some View{
        self.modifier(OutlineModifier(cornerRadius: cornerRadius))
    }
}
