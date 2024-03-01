//
//  MapView.swift
//  LearningSwiftUi
//
//  Created by Ángel Asensio on 1/3/24.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(latitude: 40.130176,
                                                longitude: -3.7495762)
        
        let span = MKCoordinateSpan(latitudeDelta: 15, longitudeDelta: 15)
        
        let region = MKCoordinateRegion(center: coordinate, span: span)
        
        uiView.setRegion(region, animated: true)
    }
}

#Preview {
    MapView()
}
