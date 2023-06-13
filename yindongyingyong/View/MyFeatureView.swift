//
//  MyFeatureView.swift
//  yindongyingyong
//
//  Created by 程鹏帆 on 2023/4/27.
//

import SwiftUI

struct MyFeatureView: View {
    
    var body: some View {
        VStack{
            ForEach(featureItemContent) { content in
                FeatureItem1(backgroundImage: content.background, title: content.title, content: content.content)
            }
        }
    }
}

struct MyFeatureView_Previews: PreviewProvider {
    static var previews: some View {
        MyFeatureView()
    }
}
