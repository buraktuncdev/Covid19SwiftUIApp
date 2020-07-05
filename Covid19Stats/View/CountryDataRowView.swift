//
//  CountryDataRowView.swift
//  Covid19Stats
//
//  Created by Burak Tunc on 3.07.2020.
//  Copyright © 2020 Burak Tunç. All rights reserved.
//

import SwiftUI

struct CountryDataRowView: View {
    
    var countryData: CountryData
    
    var body: some View {
        HStack{
            Text(countryData.country)
                .fontWeight(.medium)
                .font(.subheadline)
                .lineLimit(2)
                .frame(width: 90, alignment: .leading)
            
            Spacer()
            
            Text(countryData.confirmed.formatNumber())
            .font(.subheadline)
            .frame(height: 40)
            .padding(.leading, 1)
            
            Spacer()
            
            Text(countryData.deaths.formatNumber())
            .frame(width: 70, height: 50, alignment: .center)
            .font(.subheadline)
            .foregroundColor(.red)
            .padding(.leading, 1)
            
            Spacer()
            
            Text(countryData.recovered.formatNumber())
            .frame(width: 70, height: 50, alignment: .center)
            .font(.subheadline)
            .foregroundColor(.green)
        }
    }
}

struct CountryDataRowView_Previews: PreviewProvider {
    static var previews: some View {
        CountryDataRowView(countryData: testCountryData)
    }
}
