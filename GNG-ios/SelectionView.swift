//
//  SelectionView.swift
//  GNG-ios
//
//  Created by Sean Hong on 2023/05/27.
//

import SwiftUI

struct SelectionView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                Image("Icon").padding(.top)
                Image("AppText").padding(.bottom)
                Spacer()
                HStack {
                    NavigationLink(destination: {
                        NanumView()
                    }) {
                        VStack {
                            Image("Like")
                            Text("나눔 하기").font(.title3).bold()
                        }
                        .frame(width: 160, height: 180)
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.purple)
                    NavigationLink(destination: {
                        BiddingView()
                    }) {
                        VStack {
                            Image("Box")
                            Text("나눔 받기").font(.title3).bold()
                        }
                        .frame(width: 160, height: 180)
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.purple)
                }
                Spacer()
            }
        }
        .navigationBarBackButtonHidden()
    }
}

struct SelectionView_Previews: PreviewProvider {
    static var previews: some View {
        SelectionView()
    }
}
