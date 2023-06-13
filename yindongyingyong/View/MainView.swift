//
//  MainView.swift
//  yindongyingyong
//
//  Created by 程鹏帆 on 2023/6/8.
//

import SwiftUI

enum ViewStation: String{
    case Me,Home,Setting
}

struct MainView: View {
    @State var station: ViewStation = ViewStation.Me
    var body: some View {
        Text("abc")
//        switch(station){
//            case .Me: ContentViewMe()
//        case .Home: break
//            //
//        case .Setting: break
//            //
//        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
