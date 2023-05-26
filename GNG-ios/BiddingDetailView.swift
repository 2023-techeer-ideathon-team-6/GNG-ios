//
//  BiddingDetailView.swift
//  GNG-ios
//
//  Created by Sean Hong on 2023/05/27.
//

import SwiftUI
import StarRatingViewSwiftUI

struct BiddingDetailView: View {
    @State var isPresented: Bool = false
    @State var isConfirmedPresented: Bool = false
    @State var currentMax: String = "2400"
    @State var currentInput: String = ""
    var body: some View {
        VStack {
            Image("Zen")
            Text("소니 Wh-1000xm5")
                .font(.title)
                .bold()
            HStack {
                Text("물건 상태").font(.headline).foregroundColor(.gray)
                StarRatingView(rating: 5.0)
                    .frame(width:200, height: 20)
            }
            Spacer()
            
            VStack(alignment: .leading) {
                HStack {
                    Text("현재 최고 입찰가").font(.title3).bold()
                    Text("\(currentMax)하트")
                }
                HStack {
                    Text("현재 최고 입찰가").font(.title3).bold()
                    TextField("입찰가를 입력하세요.", text: $currentInput)
                }
            }.padding()
            
            Button(action: {
                isPresented.toggle()
                currentMax = max(currentMax, currentInput)
                isConfirmedPresented = currentMax == currentInput ? true : false
            }, label: {
                Spacer()
                Text("입찰하기").padding()
                Spacer()
            })
            .buttonStyle(.borderedProminent)
            .tint(.purple)
            .padding()
        }
        .edgesIgnoringSafeArea(.top)
        .sheet(isPresented: $isConfirmedPresented) {
            VStack {
                Image("Congratz")
                Text("축하드립니다!").font(.title).bold()
                    .padding()
                Text("소니 Wh-1000xm5 \n낙찰이 되었습니다.")
                    .font(.headline)
                    .multilineTextAlignment(.center)
                    .padding(.bottom)
                Button(action: {
                    
                }, label: {
                    Text("경매자 연락하기")
                }).buttonStyle(.borderedProminent)
                    .tint(.purple)
            }
            
            
        }
    }
}

struct BiddingDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BiddingDetailView()
    }
}
