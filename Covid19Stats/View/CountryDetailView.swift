//
//  CountryDetailView.swift
//  Covid19Stats
//
//  Created by Burak Tunc on 4.07.2020.
//  Copyright © 2020 Burak Tunç. All rights reserved.
//

import SwiftUI

struct CountryDetailView: View {
    
    var countryData: CountryData
    
    var body: some View {
        VStack {
            VStack {
                CountryDetailRowView(numberStr: countryData.confirmed.formatNumber(), name: "Confirmed")
                    .padding(.top, 5)
                CountryDetailRowView(numberStr: countryData.critical.formatNumber(), name: "Critical", color: .yellow)
                CountryDetailRowView(numberStr: countryData.deaths.formatNumber(), name: "Deaths", color: .red)
                CountryDetailRowView(numberStr: String(format:"%.2f", countryData.fatalityRate), name: "Deaths%", color: .red)
                CountryDetailRowView(numberStr: countryData.recovered.formatNumber(), name: "Recovered", color: .green)
                CountryDetailRowView(numberStr: String(format: "%.2f", countryData.recoveredRate), name: "Recovered%", color: .green)
                
            }
            .background(Color("cardBackgroundGray"))
            .cornerRadius(8)
            .padding()
            
            Spacer()
        }
        .padding(.top, 50)
        .navigationBarTitle(countryData.country)
    }
}

struct CountryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CountryDetailView(countryData: testCountryData)
    }
}
