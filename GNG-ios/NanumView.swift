//
//  NanumView.swift
//  GNG-ios
//
//  Created by Sean Hong on 2023/05/27.
//

import SwiftUI
import StarRatingViewSwiftUI
import PhotosUI

struct ProfileImage: View {
    let imageState: ProfileModel.ImageState
    
    var body: some View {
        switch imageState {
        case .success(let image):
            image.resizable()
        case .loading:
            ProgressView()
        case .empty:
            Image(systemName: "person.fill")
                .font(.system(size: 40))
                .foregroundColor(.white)
        case .failure:
            Image(systemName: "exclamationmark.triangle.fill")
                .font(.system(size: 40))
                .foregroundColor(.white)
        }
    }
}

struct CircularProfileImage: View {
    let imageState: ProfileModel.ImageState
    
    var body: some View {
        ProfileImage(imageState: imageState)
            .scaledToFill()
            .clipShape(Circle())
            .frame(width: 100, height: 100)
            .background {
                Circle().fill(
                    LinearGradient(
                        colors: [.yellow, .orange],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
            }
    }
}

struct EditableCircularProfileImage: View {
    @ObservedObject var viewModel: ProfileModel
    
    var body: some View {
        CircularProfileImage(imageState: viewModel.imageState)
            .overlay(alignment: .bottomTrailing) {
                PhotosPicker(selection: $viewModel.imageSelection,
                             matching: .images,
                             photoLibrary: .shared()) {
                    Image(systemName: "pencil.circle.fill")
                        .symbolRenderingMode(.multicolor)
                        .font(.system(size: 30))
                        .foregroundColor(.accentColor)
                }
                .buttonStyle(.borderless)
            }
    }
}

struct NanumView: View {
    @State var itemName: String = ""
    @State var rating: Float = 1.5
    @StateObject var viewModel = ProfileModel()

    var body: some View {
        VStack {
            HStack {
                EditableCircularProfileImage(viewModel: viewModel)
                Spacer()
            }
            Spacer()
            TextField("품목 명칭", text: $itemName)
                .textFieldStyle(.roundedBorder)
            Spacer()
            StarRatingView(rating: $rating)
              .onChange(of: rating) { newRating in
                print(newRating)
              }
              .frame(width: 300, height: 50)
            
            Button(action: {
                
            }, label: {
                Spacer()
                Text("등록하기").padding().bold()
                Spacer()
            })
            .buttonStyle(.borderedProminent)
            .foregroundColor(.white)
            .tint(.purple)
            .padding()
        }
        .padding()
    }
}

struct NanumView_Previews: PreviewProvider {
    static var previews: some View {
        NanumView()
    }
}
