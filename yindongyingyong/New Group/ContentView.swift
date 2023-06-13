//
//  ContentView.swift
//  yindongyingyong
//
//  Created by 程鹏帆 on 2023/4/21.
//

import SwiftUI


struct ContentViewMe: View {
    @EnvironmentObject var MyModel : Model
    @State private var long: Double = 0
    @State private var headBlur = false
    var body: some View {
        ZStack {
            VStack{
                ScrollView(showsIndicators: false){
                    Rectangle()
                        .fill(.clear)
                        .frame(height: 50)
                    VStack{
                        SearchBar(text:"")
                        Text("My Pets".uppercased())
                            .titleTextModifier()
                        MyTabView()
                            .frame(maxWidth: .infinity)
                        Text("Course".uppercased())
                            .titleTextModifier()
                        MyFeatureView()
                        
                        Image(uiImage: MyModel.image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(20)
                    }
                    .ignoresSafeArea()
                    .frame(maxWidth: .infinity,maxHeight: .infinity, alignment: .top)
                    .padding(.horizontal,5)
                }
                .coordinateSpace(name: "scroll")
                .padding()
                .ignoresSafeArea()
                .background(Image("Background"))
            }
            TabBar()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewMe()
            .environmentObject(Model())
    }
}
