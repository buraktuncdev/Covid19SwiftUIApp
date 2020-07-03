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
    @State var isSearchVisible = false
    
    var body: some View {
        
        
        NavigationView {
            VStack {
                
                // Search Button Clicked
                if isSearchVisible {
                    SearchView(searchText: $searchText)
                }
                
                // Total Data with Geometry
                TotalDataView(totalData: covidFetch.totalData)
                
                // Header List Country, Conf, Death, Recover
                HeaderListView()
                
                List {
                    ForEach(covidFetch.allCountries.filter{
                        self.searchText.isEmpty ? true : $0.country.lowercased().contains(self.searchText.lowercased())
                        
                        
                    }, id : \.country) { countryData in
                        
                        // Country Detail View Present with Navigation Link
                        
                        NavigationLink(destination: CountryDetailView(countryData: countryData)) {
                            CountryDataRowView(countryData: countryData)
                        }
                        
                    }
                }
                
                
                
            } // Enf of VStack
                
                // Navigation Bar and Search Button Toggle Action
                .navigationBarTitle("Recent Data", displayMode: .inline)
                .navigationBarItems(trailing:
                    Button(action: {
                        
                        self.isSearchVisible.toggle()
                        
                        if !self.isSearchVisible {
                            self.searchText = ""
                        }
                        
                    }, label: {
                        Image(systemName: "magnifyingglass")
                    })
            )
        } // End of Navigation View
    }
}

struct RecentView_Previews: PreviewProvider {
    static var previews: some View {
        RecentView()
    }
}
