//
//  aula05.swift
//  aula04
//
//  Created by Student07 on 07/03/23.
//

import SwiftUI
import MapKit
struct Location: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}
struct aula05: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: -23.55,longitude: -46.33),
        span: MKCoordinateSpan(latitudeDelta: 20,longitudeDelta: 0.03))
    @State var locais = [Location(name: "teste", coordinate: CLLocationCoordinate2D(latitude: 0.0, longitude: 0.0)),
        Location(name: "Eua", coordinate: CLLocationCoordinate2D(latitude:0.0, longitude: 0.0))]
    
    var body: some View {
        VStack {
            Map(coordinateRegion: $region, annotationItems: locais) { location in
                MapMarker(coordinate: location.coordinate)
            }.ignoresSafeArea().padding(-200)
            ScrollView {
                VStack {
                    Button("São Paulo", action: {
                        locais = [
                            Location(name: "sp", coordinate: CLLocationCoordinate2D(latitude: -23.58, longitude: -46.6388))]
                    }).padding(.horizontal,100.0).background(.green).foregroundColor(.black)
                    Spacer()
                    Button("Rio de Janeiro", action: {
                        locais.append(Location(name: "rj", coordinate: CLLocationCoordinate2D(latitude: -22.9035, longitude: -43.2096)))
                    }).padding(.horizontal,100.0).background(.red).foregroundColor(.black)
                    Spacer()
                    Button("Minas Gerais", action: {
                    }).padding(.horizontal,100.0).background(.blue).foregroundColor(.black)
                }.padding(.top,300)
            }
        }
    }
}
struct aula05_Previews: PreviewProvider {
    static var previews: some View {
        aula05()
    }
}
