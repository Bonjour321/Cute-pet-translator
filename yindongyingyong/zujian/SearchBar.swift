//
//  SearchBar.swift
//  yindongyingyong
//
//  Created by 程鹏帆 on 2023/4/21.
//

import SwiftUI

import UIKit

struct ImagePicker: UIViewControllerRepresentable {
    @Environment(\.presentationMode) private var presentationMode
    let sourceType: UIImagePickerController.SourceType
    let onImagePicked: (UIImage) -> Void
 
    final class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
 
        @Binding private var presentationMode: PresentationMode
        private let sourceType: UIImagePickerController.SourceType
        private let onImagePicked: (UIImage) -> Void
 
        init(presentationMode: Binding<PresentationMode>,
             sourceType: UIImagePickerController.SourceType,
             onImagePicked: @escaping (UIImage) -> Void) {
            _presentationMode = presentationMode
            self.sourceType = sourceType
            self.onImagePicked = onImagePicked
        }
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            let uiImage = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
            onImagePicked(uiImage)
            presentationMode.dismiss()
        }
 
        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            presentationMode.dismiss()
        }
 
    }
 
    func makeCoordinator() -> Coordinator {
        return Coordinator(presentationMode: presentationMode,
                           sourceType: sourceType,
                           onImagePicked: onImagePicked)
    }
 
    func makeUIViewController(context: UIViewControllerRepresentableContext<ImagePicker>) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.sourceType = sourceType
        picker.delegate = context.coordinator
        return picker
    }
 
    func updateUIViewController(_ uiViewController: UIImagePickerController,
                                context: UIViewControllerRepresentableContext<ImagePicker>) {
    }
}

struct SearchBar: View {
    @EnvironmentObject var MyModel : Model
    @State var text:String
    @State var show = false
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .frame(width: 20,height: 20)
                    .padding(.horizontal,10)
                TextField("Search", text: $text)
                Button{
                    show = true
                }label: {
                    Image(systemName: "square")
                        .resizable()
                        .frame(width: 20,height: 20)
                        .foregroundColor(.primary)
                        .padding(.horizontal,10)
                }
            }
            .frame(height: 50)
            .padding(.horizontal,5)
        }
        .background(.ultraThinMaterial)
        .mask {
            RoundedRectangle(cornerRadius: 20,style: .continuous)
        }
        .sheet(isPresented: $show) {
            ImagePicker(sourceType: .camera) { image in
                MyModel.image = image
            }
            .ignoresSafeArea()
        }
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(text: "")
    }
}
