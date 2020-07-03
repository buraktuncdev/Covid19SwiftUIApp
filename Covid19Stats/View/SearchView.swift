//
//  SearchView.swift
//  Covid19Stats
//
//  Created by Burak Tunc on 3.07.2020.
//  Copyright © 2020 Burak Tunç. All rights reserved.
//

import SwiftUI

struct SearchView: View {
    
    @Binding var searchText: String
    
    var body: some View {
        
        HStack {
            TextField("Country...", text: $searchText)
                .padding()
        }
        .frame(height: 50)
        .background(Color("cardBackgroundGray"))
    }
}

