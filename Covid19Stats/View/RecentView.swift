//
//  RecentView.swift
//  Covid19Stats
//
//  Created by Burak Tunc on 3.07.2020.
//  Copyright © 2020 Burak Tunç. All rights reserved.
//

import SwiftUI

struct RecentView: View {
    
    @ObservedObject var covidFetch = CovidFetchRequest()
    @State var searchText = ""
    
    var body: some View {
        
        
        NavigationView {
            VStack {
                
                TotalDataView(totalData: covidFetch.totalData)
                
                HeaderListView()
                
                List {
                    ForEach(covidFetch.allCountries.filter{
                        self.searchText.isEmpty ? true : $0.country.lowercased().contains(self.searchText.lowercased())
                        
                        
                    }, id : \.country) { countryData in
                        
                        CountryDataRowView(countryData: countryData)
                    }
                }
                
                
                
            } // Enf of VStack
            
                .navigationBarTitle("Recent Data", displayMode: .inline)
            
        } // End of Navigation View
    }
}

struct RecentView_Previews: PreviewProvider {
    static var previews: some View {
        RecentView()
    }
}
