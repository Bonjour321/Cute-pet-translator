//
//  yindongyingyongApp.swift
//  yindongyingyong
//
//  Created by 程鹏帆 on 2023/4/21.
//

import SwiftUI

@main
struct yindongyingyongApp: App {
    @StateObject var DataModel = Model()
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(DataModel)
        }
    }
}
