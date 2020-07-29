//
//  MapView.swift
//  Covid19Stats
//
//  Created by Burak Tunc on 5.07.2020.
//  Copyright © 2020 Burak Tunç. All rights reserved.
//

import SwiftUI
import UIKit
import MapKit
/*
struct MapView: UIViewRepresentable {
      
    @Binding var countryData: [CountryData]
    
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentable<MapView>) {
        
        
        var allAnnotation: [CoronaCaseAnnotation] = []
        
        for data in countryData {
            
            let title = data.country + "\n Confirmed " + data.confirmed.formatNumber() + "\n Death " + data.deaths.formatNumber()
            
            let coordinate = CLLocationCoordinate2D(latitude: data.latitude, longitude: data.longitude)
            
            allAnnotation.append(CoronaCaseAnnotation(title: title, coordinate: coordinate))
            
            uiView.annotations.forEach( {uiView.removeAnnotation($0) } )
            uiView.addAnnotation(allAnnotation as! MKAnnotation)
            
        }
        
        func makeUIView(context:UIViewRepresentable<MapView>) -> MKMapView {
            return MKMapView()
        }
        
    }
    
    
}

class CoronaCaseAnnotation: NSObject, MKAnnotation {
    
    let coordinate: CLLocationCoordinate2D
    let title: String?
    
    init(title: String?, coordinate: CLLocationCoordinate2D) {
        self.title = title
        self.coordinate = coordinate
    }
    
    
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}

 */
