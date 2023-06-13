//
//  ContentModel.swift
//  yindongyingyong
//
//  Created by 程鹏帆 on 2023/4/23.
//

import Foundation

struct ContentModel{
    var image: String
    var title: String
    var content: String
}

struct ContentResoure{
    var id = UUID()
    var count:[ContentModel] = [
        
    ]
}
