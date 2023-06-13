//
//  TitleTextModifier.swift
//  yindongyingyong
//
//  Created by 程鹏帆 on 2023/4/27.
//

import SwiftUI


struct TitleTextModifier : ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.system(size: 20))
            .font(.footnote.weight(.semibold))
            .foregroundColor(.secondary)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.vertical,15)
//            .padding(.horizontal,10)
    }
}


extension View{
    func titleTextModifier() -> some View{
        modifier(TitleTextModifier())
    }
}

