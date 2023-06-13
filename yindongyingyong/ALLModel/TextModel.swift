//
//  TextModel.swift
//  yindongyingyong
//
//  Created by 程鹏帆 on 2023/4/27.
//

import Foundation

struct FeatureTextModel : Identifiable{
    var id = UUID()
    var image: String
    var name: String
    var kind: String
    var age: String
    var weight: String
}
var itemTextModel: [FeatureTextModel] = [
    FeatureTextModel(image: "gou1",name: "Bella", kind: "Welsh Corgi", age: "8 months old", weight: "22.05 pounds"),
    FeatureTextModel(image: "gou2",name: "Max", kind: "Hungarian", age: "8 months old", weight: "68.3 pounds"),
    FeatureTextModel(image: "gou1",name: "suibian", kind: "suibian", age: "suibian", weight: "suibian"),
    FeatureTextModel(image: "gou1",name: "suibian", kind: "suibian", age: "suibian", weight: "suibian"),
    FeatureTextModel(image: "gou1",name: "suibian", kind: "suibian", age: "suibian", weight: "suibian"),
    FeatureTextModel(image: "gou1",name: "suibian", kind: "suibian", age: "suibian", weight: "suibian")
]
