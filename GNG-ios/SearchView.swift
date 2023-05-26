//
//  SearchView.swift
//  GNG-ios
//
//  Created by Sean Hong on 2023/05/27.
//

import SwiftUI
import StarRatingViewSwiftUI

struct SearchView: View {
    @State var query: [Content] = [Content(itemId: 0, title: "h", imageUrl: "e", starCount: 3, maxBid: 5)]
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                EmptyView()
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
