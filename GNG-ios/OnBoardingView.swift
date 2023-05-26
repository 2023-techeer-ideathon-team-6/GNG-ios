//
//  OnBoardingView.swift
//  GNG-ios
//
//  Created by Sean Hong on 2023/05/27.
//

import SwiftUI

struct OnBoardingView: View {
    @State var currentTab: Int = 0
    var body: some View {
        VStack {
            TabView(selection: $currentTab,
                    content:  {
                FirstOnBoardingView()
                    .tag(0)
                SecondOnBoardingView()
                    .tag(1)
                FinalOnBoardingView()
                    .tag(2)
            })
            .tabViewStyle(PageTabViewStyle())
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            
        }
        
    }
}

struct FirstOnBoardingView: View {
    var body: some View {
        VStack {
            Image("OnBoarding1")
                .resizable()
                .scaledToFit()
            Text("우리 동네 커뮤니티")
                .font(.title)
                .bold()
                .padding(.bottom)
            Text("내 주변에 쓰지 않는 중고 물품을 \n공유해봐요")
                .multilineTextAlignment(.center)
        }
    }
}

struct SecondOnBoardingView: View {
    var body: some View {
        VStack {
            Image("OnBoarding2")
                .resizable()
                .scaledToFit()
            Text("즐거운 물건 나눔 생활")
                .font(.title)
                .bold()
                .padding(.bottom)
            Text("내가 원하는 물건을 중고 무료 경매를 \n통해서 얻어봐요")
                .multilineTextAlignment(.center)
        }
    }
}

struct FinalOnBoardingView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Image("OnBoarding3")
                    .resizable()
                    .scaledToFit()
                Text("이제 바로 시작하기")
                    .font(.title)
                    .bold()
                    .padding(.bottom)
                Text("지금 바로 원하는 물건을 찾아보고 \n즐거운 나눔 생활을 시작해봐요")
                    .multilineTextAlignment(.center)
                
                NavigationLink(destination: ContentView()) {
                    HStack {
                        Spacer()
                        Text("시작하기").padding()
                        Spacer()
                    }
                }
                .buttonStyle(.borderedProminent)
                .foregroundColor(.white)
                .tint(.purple)
                .padding()
                
            }
        }
        
    }
}


struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
