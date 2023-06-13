//
//  FeatureItem.swift
//  yindongyingyong
//
//  Created by 程鹏帆 on 2023/4/27.
//

import SwiftUI

struct FeatureItem1 : View{
    var backgroundImage: String
    var title: String
    var content: String
    var body: some View{
        VStack{
            Spacer()
            VStack{
                Text(title)
                    .font(.title)
                    .frame(maxWidth: .infinity,alignment: .leading)
                Text(content)
                    .frame(maxWidth: .infinity,alignment: .leading)
                    .lineLimit(3)
            }
            .foregroundColor(.white)
            .background(
                Rectangle()
                    .fill(.ultraThinMaterial)
                    .blur(radius: 20)
            )
        }
        .shadow(radius: 30, x: 0, y: 30)
        .padding(20)
        .foregroundColor(.secondary)
        .background(
            Image(backgroundImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 20,style: .continuous))
        )
        .frame(height: 250)
    }
}


struct preview_Feature: PreviewProvider{
    static var previews: some View{
        FeatureItem1(backgroundImage: "background1", title: "Training", content: "To help pets learn some basic behavioral rules and skills, so that they can better adapt to the life style of human society.")
    }
}
