//
//  CountryData.swift
//  Covid19Stats
//
//  Created by Burak Tunc on 3.07.2020.
//  Copyright © 2020 Burak Tunç. All rights reserved.
//

import Foundation

struct CountryData {
    
    let confirmed: Int64
    let critical: Int64
    let deaths: Int64
    let recovered: Int64
    let longitude: Double
    let latitude: Double
    let country: String
    
    var fatalityRate:Double {
        return (100.00 * Double(deaths)) / Double(confirmed)
    }
    
    var recoveredRate: Double {
         return (100.00 * Double(recovered)) / Double(confirmed)
    }
    
}

let testCountryData = CountryData(confirmed: 200, critical: 200, deaths: 200, recovered: 200, longitude: 20.0, latitude: 20.0, country: "Test")
