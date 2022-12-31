//
//  ContentView.swift
//  Directions
//

import MapKit
import SwiftUI
import UIKit

struct ContentView: View {

  @State private var directions: [String] = []
  @State private var showDirections = false

  var body: some View {
    VStack {
      MapView(directions: $directions)

      Button(action: {
        self.showDirections.toggle()
      }, label: {
        Text("Mostra Indicaciones")
      })
      .disabled(directions.isEmpty)
      .padding()
    }.sheet(isPresented: $showDirections, content: {
      VStack(spacing: 0) {
        Text("Indicaciones para llegar al tec")
          .font(.largeTitle)
          .bold()
          .padding()

        Divider().background(Color(UIColor.systemBlue))

        List(0..<self.directions.count, id: \.self) { i in
          Text(self.directions[i]).padding()
        }
      }
    })
  }
}

struct MapView: UIViewRepresentable {

  typealias UIViewType = MKMapView

  @Binding var directions: [String]

  func makeCoordinator() -> MapViewCoordinator {
    return MapViewCoordinator()
  }

  func makeUIView(context: Context) -> MKMapView {
    let mapView = MKMapView()
    mapView.delegate = context.coordinator

    let region = MKCoordinateRegion(
      center: CLLocationCoordinate2D(latitude: 25.560943344280517, longitude: -103.39759393033292),
      span: MKCoordinateSpan(latitudeDelta: 0.03, longitudeDelta: 0.03))
    mapView.setRegion(region, animated: true)

    // llegar de mi casa al tec
    // Cine Tec
      let p1 = MKPlacemark(coordinate: CLLocationCoordinate2D(latitude: 25.560943344280517, longitude: -103.39759393033292))
                
    // Yo
    let p2 = MKPlacemark(coordinate: CLLocationCoordinate2D(latitude: 25.533260932165902, longitude: -103.43562389710982))
   

    let request = MKDirections.Request()
    request.source = MKMapItem(placemark: p1)
    request.destination = MKMapItem(placemark: p2)
    request.transportType = .automobile

    let directions = MKDirections(request: request)
    directions.calculate { response, error in
      guard let route = response?.routes.first else { return }
      //mapView.addAnnotations([p1, p2])
      mapView.addOverlay(route.polyline)
      mapView.setVisibleMapRect(
        route.polyline.boundingMapRect,
        edgePadding: UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10),
        animated: true)
      self.directions = route.steps.map { $0.instructions }.filter { !$0.isEmpty }
    }
    return mapView
  }

  func updateUIView(_ uiView: MKMapView, context: Context) {
  }

  class MapViewCoordinator: NSObject, MKMapViewDelegate {
    func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
      let renderer = MKPolylineRenderer(overlay: overlay)
      renderer.strokeColor = .systemBlue
      renderer.lineWidth = 5
      return renderer
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
