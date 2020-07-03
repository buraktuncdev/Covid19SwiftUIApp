//
//  Constants.swift
//  Covid19Stats
//
//  Created by Burak Tunc on 3.07.2020.
//  Copyright © 2020 Burak Tunç. All rights reserved.
//

import Foundation
import Alamofire


// API Helper Constants
let apiHeaders: HTTPHeaders =  [
    "x-rapidapi-host": "covid-19-data.p.rapidapi.com",
    "x-rapidapi-key": "d172e810e7msh47584ae043c146dp12d8eejsnb0b3c42c4a59"
]

let totalFetchURL = "https://covid-19-data.p.rapidapi.com/totals?format=json"
let allCountriesURL = "https://covid-19-data.p.rapidapi.com/country/all"
