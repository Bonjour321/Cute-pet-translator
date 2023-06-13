//
//  TabItem.swift
//  yindongyingyong
//
//  Created by 程鹏帆 on 2023/4/26.
//

import SwiftUI

struct MyTabView: View {
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false){
            HStack{
                ForEach(itemTextModel) { content in
                    MyTabItem(image:content.image,name: content.name, kind: content.kind, age: content.age, weight: content.weight)
                        .frame(width: 195,height:220)
                }
            }
        }
    }
}

struct TabItem_Previews: PreviewProvider {
    static var previews: some View {
        MyTabView()
    }
}
