//
//  BiddingView.swift
//  GNG-ios
//
//  Created by Sean Hong on 2023/05/27.
//

import SwiftUI

struct BiddingView: View {
    @State var searchText: String = ""
    var body: some View {
        VStack {
            Text("검색한 물건이 없습니다.")
        }
        .searchable(text: $searchText, placement: .toolbar) {
            SearchView()
        }
    }
}

struct BiddingView_Previews: PreviewProvider {
    static var previews: some View {
        BiddingView()
    }
}
