//
//  FeatureModel.swift
//  yindongyingyong
//
//  Created by 程鹏帆 on 2023/4/27.
//

import Foundation

struct FeatureItemContent : Identifiable{
    var id = UUID()
    var background: String
    var title: String
    var content: String
}

var featureItemContent: [FeatureItemContent] = [
    FeatureItemContent(background: "background1", title: "Training", content: "To help pets learn some basic behavioral rules and skills, so that they can better adapt to the life style of human society."),
    FeatureItemContent(background: "background2", title: "Care", content: "svsihvirha;uvdha ia;viu gaibv uabdluycgv adbuaybdysbavliubdgu abdysv"),
    FeatureItemContent(background: "background2", title: "Care", content: "svsihvirha;uvdha ia;viu gaibv uabdluycgv adbuaybdysbavliubdgu abdysv"),
    FeatureItemContent(background: "background2", title: "Care", content: "svsihvirha;uvdha ia;viu gaibv uabdluycgv adbuaybdysbavliubdgu abdysv"),
    FeatureItemContent(background: "background2", title: "Care", content: "svsihvirha;uvdha ia;viu gaibv uabdluycgv adbuaybdysbavliubdgu abdysv"),
    FeatureItemContent(background: "background2", title: "Care", content: "svsihvirha;uvdha ia;viu gaibv uabdluycgv adbuaybdysbavliubdgu abdysv"),
    FeatureItemContent(background: "background2", title: "Care", content: "svsihvirha;uvdha ia;viu gaibv uabdluycgv adbuaybdysbavliubdgu abdysv")
]
