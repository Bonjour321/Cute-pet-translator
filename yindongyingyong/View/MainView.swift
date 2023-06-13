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
    @State var station: ViewStation = ViewStation.Home
    @EnvironmentObject var dataModel: Model
    var body: some View {
        HStack{
            switch station{
            case .Home:
                ContentViewMe()
                    .environmentObject(dataModel)
            case .Me:
                MeView()
            case .Setting:
                Text("abc")
            }
        }
        .overlay {
            TabBar(station: $station)
        }
        .frame(width: .infinity,height: .infinity)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(Model())
    }
}
