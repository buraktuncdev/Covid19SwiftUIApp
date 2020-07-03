//
//  CountryDetailRow.swift
//  Covid19Stats
//
//  Created by Burak Tunc on 4.07.2020.
//  Copyright © 2020 Burak Tunç. All rights reserved.
//

import SwiftUI

struct CountryDetailRowView: View {
    
    var numberStr: String = "Err"
    var name: String = "Confirmed"
    var color: Color = .primary
    
    var body: some View {
        
        VStack {
            
            HStack {
                Text(self.name)
                    .font(.body)
                    .padding(5)
                
                Spacer()
                
                Text(self.numberStr)
                .font(.subheadline)
                .padding(5)
                .foregroundColor(color)
                
            }
            Divider()
            
                .padding(.leading)
                .padding(.trailing)
        }
        
    }
}

struct CountryDetailRow_Previews: PreviewProvider {
    static var previews: some View {
        CountryDetailRowView()
    }
}
