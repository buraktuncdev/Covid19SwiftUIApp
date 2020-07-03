//
//  TotalDataView.swift
//  Covid19Stats
//
//  Created by Burak Tunc on 3.07.2020.
//  Copyright © 2020 Burak Tunç. All rights reserved.
//

import SwiftUI

struct TotalDataView: View {
    
    var totalData: TotalData
    
    
    var body: some View {
        
        VStack {
            HStack {
                TotalDataCardView(numberStr: totalData.confirmed.formatNumber(), name: "Confirmed")
                TotalDataCardView(numberStr: totalData.confirmed.formatNumber(), name: "Critical", color: .yellow)
                TotalDataCardView(numberStr: totalData.confirmed.formatNumber(), name: "Deaths", color: .red)
            }
            HStack {
                TotalDataCardView(numberStr: String(format: "%.2f", totalData.fatalityRate), name: "Death %")
                TotalDataCardView(numberStr: totalData.recovered.formatNumber(), name: "Recovered")
                TotalDataCardView(numberStr: String(format: "%.2f", totalData.recoveredRate), name: "Recovery%")
                
            }
            
        } // End Of VStack
        
        .frame(height: 170)
        .padding(10)
        
        
    }
}

struct TotalDataView_Previews: PreviewProvider {
    static var previews: some View {
        TotalDataView(totalData: testTotalData)
    }
}
