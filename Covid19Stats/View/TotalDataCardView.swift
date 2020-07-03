//
//  TotalDataCardView.swift
//  Covid19Stats
//
//  Created by Burak Tunc on 3.07.2020.
//  Copyright © 2020 Burak Tunç. All rights reserved.
//

import SwiftUI

struct TotalDataCardView: View {
    
    var numberStr: String = "Err"
    var name: String = "Confirmed"
    var color: Color = .primary
    
    var body: some View {
        
        GeometryReader {
            geometry in
            
            VStack {
                
                Text(self.numberStr)
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .padding(5)
                    .foregroundColor(self.color)
                
                Text(self.name)
                    .font(.body)
                    .fontWeight(.bold)
                    .padding(5)
                    .foregroundColor(self.color)
                
            } // End of VStack
            
                .frame(width: geometry.size.width, height: 80.0, alignment: .center)
                .background(Color("cardBackgroundGray"))
                .cornerRadius(8.0)
            
        } // End of Geometry
        
    }
}

struct TotalDataCardView_Previews: PreviewProvider {
    static var previews: some View {
        TotalDataCardView()
    }
}
