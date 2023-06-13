//
//  MyTabItem.swift
//  yindongyingyong
//
//  Created by 程鹏帆 on 2023/4/26.
//

import SwiftUI

struct MyTabItem: View {
    var image: String
    var name: String
    var kind: String
    var age: String
    var weight: String
    var body: some View {
        VStack{
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .frame(width: 45,height: 45)
                .frame(maxWidth: .infinity,alignment: .leading)
                .offset(x:-4,y:-4)
            Spacer()
            Text(name)
                .font(.title)
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding(.bottom,5)
            Group{
                Text(kind)
                    .frame(maxWidth: .infinity,alignment: .leading)
                Text(age)
                    .frame(maxWidth: .infinity,alignment: .leading)
                Text(weight)
                    .frame(maxWidth: .infinity,alignment: .leading)
            }
            .foregroundColor(.secondary)
        }
        .padding(17)
        .frame(width: 190.52,height: 220,alignment: .bottom)
        .background(.ultraThinMaterial,in: RoundedRectangle(cornerRadius: 20,style: .continuous))
    }
}

struct MyTabItem_Previews: PreviewProvider {
    static var previews: some View {
        MyTabItem(image:"gou1",name:"Bella",kind: "Welsh Corgi",age: "8 month old",weight: "22.05 pounds")
    }
}
