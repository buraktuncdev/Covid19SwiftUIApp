//
//  CovidFetchRequest.swift
//  Covid19Stats
//
//  Created by Burak Tunc on 3.07.2020.
//  Copyright © 2020 Burak Tunç. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class CovidFetchRequest: ObservableObject {
    
    @Published var allCountries: [CountryData] = []
    @Published var totalData: TotalData = testTotalData
    
    
    
    
    init() {
        getCurrentTotal()
        getAllCountries()
    }
    
    func getCurrentTotal(){
        AF.request(totalFetchURL, headers: apiHeaders).responseJSON { response in
            let result = response.data
            
            if result != nil {
                let json = JSON(result!)
                let confirmed = json[0]["confirmed"].intValue
                let deaths = json[0]["deaths"].intValue
                let critical = json[0]["critical"].intValue
                let recovered = json[0]["recovered"].intValue
                
                // set the result to published variable
                self.totalData = TotalData(confirmed: confirmed, critical: critical, deaths: deaths, recovered: recovered)
               
            } else {
                self.totalData = testTotalData
            }
        }
    }
    
    func getAllCountries(){
        AF.request(allCountriesURL, headers: apiHeaders).responseJSON { response in
            
            let result = response.value
            
            var allCount: [CountryData] = []
            
            if result != nil {
                
                let dataDictionary = response.value as! [Dictionary<String, AnyObject>]
                
                for countryData in dataDictionary {
                    let country = countryData["country"] as? String ?? "Error"
                    let confirmed = countryData["confirmed"] as? Int64 ?? 0
                    let latitude = countryData["latitude"] as? Double ?? 0.0
                    let longitude = countryData["longitude"] as? Double ?? 0.0
                    let deaths = countryData["deaths"] as? Int64 ?? 0
                    let critical = countryData["critical"] as? Int64 ?? 0
                    let recovered = countryData["recovered"] as? Int64 ?? 0
                    
                    
                    let countryObj = CountryData(confirmed: confirmed, critical: critical, deaths: deaths, recovered: recovered, longitude: longitude, latitude: latitude, country: country)
                    
                    allCount.append(countryObj)
                    
                }
                
                
            }
            
            // Confirmed Sort
            self.allCountries = allCount.sorted(by: { $0.confirmed > $1.confirmed })
            

        }
    }
    
}
