//
//  ContentView.swift
//  Proyecto_SwiftUI
//
//  Created by Usuario invitado on 14/12/22.
//
    //  By: RETBOT
import SwiftUI
import MapKit

struct ContentView: View {

    @State private var region : MKCoordinateRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 25.533256, longitude: -103.435143), span: MKCoordinateSpan(latitudeDelta: 0.03, longitudeDelta: 0.03))
    
    private let places = [
    
        PointOfInterest(name: "CINE TEC", latitude: 25.53337102262182, longitude :  -103.435821721374),
        
        PointOfInterest(name: "Yo", latitude:   25.530502600769054, longitude :           -103.43695214849122)
    
    ]
    
    @State private var latitud: String = ""
    @State private var longitud: String = ""
    
    var body: some View {
        
        //  By: RETBOT
        Map(coordinateRegion: $region, annotationItems: places) {
            place in //MapPin(coordinate: place.coordinate) } . edgesIgnoringSafeArea(.all)
            MapAnnotation(coordinate: place.coordinate) {
                Label(place.name,systemImage: "hand.thumbsup.fill")
                    .font(.title)
                    .foregroundColor(.black)
                Image(systemName: "mapping.circle.fill" )
                
                    .font(.title)
                    .foregroundColor(.black)
                
            }
        }.edgesIgnoringSafeArea(.all)
    }
}
/*
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
*///  By: RETBOT
