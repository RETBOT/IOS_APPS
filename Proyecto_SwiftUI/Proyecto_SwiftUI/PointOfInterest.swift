//
//  PointOfInterest.swift
//  Proyecto_SwiftUI
//
//  Created by Usuario invitado on 14/12/22.
//
//  By: RETBOT
import Foundation
import MapKit

// 1. & 4.
struct PointOfInterest: Identifiable {
    // 2.
    let id = UUID()
    let name: String
    let latitude: Double
    let longitude: Double
    
    // 3.
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
//  By: RETBOT
