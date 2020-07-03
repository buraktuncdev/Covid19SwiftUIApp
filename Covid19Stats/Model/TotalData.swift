//
//  TotalData.swift
//  Covid19Stats
//
//  Created by Burak Tunc on 3.07.2020.
//  Copyright © 2020 Burak Tunç. All rights reserved.
//

import Foundation

struct TotalData {
    let confirmed: Int
    let critical: Int
    let deaths: Int
    let recovered: Int
    
    var fatalityRate:Double {
        return (100.00 * Double(deaths)) / Double(confirmed)
    }
    
    var recoveredRate: Double {
         return (100.00 * Double(recovered)) / Double(confirmed)
    }
    
}

let testTotalData = TotalData(confirmed: 200, critical: 100, deaths: 20, recovered: 50)
