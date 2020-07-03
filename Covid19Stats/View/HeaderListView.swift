//
//  HeaderListView.swift
//  Covid19Stats
//
//  Created by Burak Tunc on 3.07.2020.
//  Copyright © 2020 Burak Tunç. All rights reserved.
//

import SwiftUI

struct HeaderListView: View {
    var body: some View {
        HStack{
            Text("Country")
                .fontWeight(.bold)
                .font(.subheadline)
                .frame(width: 110, alignment: .leading)
                .padding(.leading, 15)
            
            Spacer()
            
            Text("Conf.")
            .fontWeight(.bold)
            .font(.subheadline)
                .frame(height: 40)
            .padding(.leading, 5)
            
            Spacer()
            
            Text("Death")
            .fontWeight(.bold)
            .font(.subheadline)
            .frame(height: 40)
            .padding(.leading, 5)
            
            Spacer()
            
            Text("Recover")
            .fontWeight(.bold)
            .font(.subheadline)
            .frame(height: 40)
            .padding(.trailing, 15)
        }
        .background(Color(.gray))
    }
}

struct HeaderListView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderListView()
    }
}
