//
//  MeView.swift
//  yindongyingyong
//
//  Created by 程鹏帆 on 2023/6/26.
//

import SwiftUI

struct MeView: View {
    var body: some View {
        VStack{
            Color.clear
                .frame(width: .infinity,height: 50)
            MyInfoMationView()
            Spacer()
        }
        .frame(width: .infinity,height: .infinity)
        .ignoresSafeArea()
    }
}

struct MeView_Previews : PreviewProvider {
    static var previews : some View{
        MeView()
    }
}


