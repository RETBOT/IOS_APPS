//
//  LocationViewModel.swift
//  Proyecto_SwiftUI
//
//  Created by Usuario invitado on 14/12/22.
////  By: RETBOT

import UIKit
import CoreLocation
import MapKit

final class LocationViewModel: NSObject, ObservableObject, CLLocationManagerDelegate {
    private struct DefaultRegion {
        static let latitude = 25.53325628850655
        static let longitude = -103.43514252426152
    }
    
    private struct Span {
        static let delta = 0.1
    }
    
    private let locationManager: CLLocationManager = .init()
    @Published var userLocation: MKCoordinateRegion = .init()
    @Published var userHasLocation: Bool = false
    //  By: RETBOT
    override init() {
        super.init()
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        locationManager.delegate = self
        userLocation = .init(center: CLLocationCoordinate2D(latitude: DefaultRegion.latitude, longitude: DefaultRegion.longitude),
                             span: .init(latitudeDelta: Span.delta, longitudeDelta: Span.delta))
    }
    
    func checkUserAuthorization() {
        let status = locationManager.authorizationStatus
        switch status {
        case .authorized, .authorizedAlways, .authorizedWhenInUse:
            userHasLocation = true
            break
        case .denied, .notDetermined, .restricted:
            print("User no ha autorizado mostrar su localización")
            userHasLocation = false
        @unknown default:
            print("Unhandled state")
        }
    }
}//  By: RETBOT

extension LocationViewModel {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else { return }
        
        userLocation = .init(center: location.coordinate,
                             span: .init(latitudeDelta: Span.delta, longitudeDelta: Span.delta))
        userHasLocation = true
    }
    
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        checkUserAuthorization()
    }
}

//  By: RETBOT
