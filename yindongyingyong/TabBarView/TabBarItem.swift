//
//  TabBarItem.swift
//  yindongyingyong
//
//  Created by 程鹏帆 on 2023/6/6.
//

import SwiftUI

struct TabBarItem: View {
    var systemName:String
    var text: String
    var body: some View {
        VStack(spacing: 3){
            Image(systemName: systemName)
            Text(text)
                .foregroundColor(.primary)
                .font(.footnote)
        }
        .frame(width: 100)
    }
}

struct TabBarItem_Previews: PreviewProvider {
    static var previews: some View {
        TabBarItem(systemName: "person",text: "Setting")
    }
}
