//
//  MyInfoMationView.swift
//  yindongyingyong
//
//  Created by 程鹏帆 on 2023/6/26.
//

import SwiftUI

struct MyInfoMationView: View {
    var body: some View {
        HStack(spacing: 13){
            Image("HeadImage")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 60,height: 60)
            VStack(alignment: .leading){
                Text("狗不理豹子")
                    .foregroundStyle(.primary)
                    .font(.system(size: 22))
                Text("ID: 1433223")
                    .foregroundStyle(.secondary)
                    .font(.system(size: 13))
            }
            Spacer()
            Button{
                
            }label: {
                Image(systemName: "chevron.right")
            }
            .foregroundColor(.secondary)
        }
        .padding(16)
        .frame(width: 361)
        .background(
            .ultraThinMaterial,
            in:RoundedRectangle(cornerRadius: 14, style: .continuous)
        )
    }
}

struct MyInfoMationView_Previews: PreviewProvider {
    static var previews: some View{
        MyInfoMationView()
    }
}
