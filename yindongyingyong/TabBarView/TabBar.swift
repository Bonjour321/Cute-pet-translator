//
//  TabBar.swift
//  yindongyingyong
//
//  Created by 程鹏帆 on 2023/6/6.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        VStack{
            GeometryReader{ proxy in
                VStack {
                    HStack{
                        Spacer()
                        Button {
                            //
                        } label: {
                            TabBarItem(systemName: "person.circle", text: "Me")
                        }
                        Spacer()
                        Button{
                            //
                        }label: {
                            TabBarItem(systemName: "house", text: "Home")
                        }
                        Spacer()
                        Button{
                            //
                        }label: {
                            TabBarItem(systemName: "gearshape", text: "Setting")
                        }
                        Spacer()
                    }
                    .font(.system(size: 22))
                    .background(
                        RoundedRectangle(cornerRadius: 0,style: .continuous)//原来半径是35
                            .fill(.ultraThinMaterial)
                            .frame(height: 85)
                    )
                    .foregroundStyle(.primary)
                    .frame(height: 17)
                }
                .frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .bottom)
            }
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
