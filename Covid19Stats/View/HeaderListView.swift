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
                .frame(width: 90, alignment: .leading)
                .padding(.leading, 5)
                .foregroundColor(.white)
            
            Spacer()
            
            Text("Confirmed")
            .fontWeight(.bold)
            .font(.subheadline)
                .frame(height: 40)
            .padding(.leading, 1)
            .foregroundColor(.white)
            
            Spacer()
            
            Text("Death")
            .fontWeight(.bold)
            .font(.subheadline)
            .frame(height: 40)
            .padding(.leading, 1)
            .foregroundColor(.white)
            
            Spacer()
            
            Text("Recover")
            .fontWeight(.bold)
            .font(.subheadline)
            .frame(height: 40)
            .padding(.trailing, 20)
            .foregroundColor(.white)
        }
        .background(Color(.black))
    }
}

struct HeaderListView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderListView()
    }
}
