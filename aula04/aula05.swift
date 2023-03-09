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
    let flag: String
    let descricao: String
}
struct aula05: View {
    @State private var mostrarSheet = false
    @State private var current_loc = Location(name: "teste1", coordinate: CLLocationCoordinate2D(latitude: 0.0, longitude: 0.0),flag: "sewewe",descricao: "ewewewewew")
    
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: -23.55,longitude: -46.33),
        span: MKCoordinateSpan(latitudeDelta: 0.3,longitudeDelta: 0.3))
    @State var locais = [Location(name: "São Paulo", coordinate: CLLocationCoordinate2D(latitude: -23.58, longitude: -46.6388),flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2b/Bandeira_do_estado_de_S%C3%A3o_Paulo.svg/280px-Bandeira_do_estado_de_S%C3%A3o_Paulo.svg.png",descricao: "São Paulo é uma das 27 unidades federativas do Brasil. Está situado na Região Sudeste e tem por limites os estados de Minas Gerais a norte e nordeste, Paraná a sul, Rio de Janeiro a leste e Mato Grosso do Sul a oeste, além do Oceano Atlântico a sudeste. É dividido em 645 municípios e sua área total é de 248 219,481 km², o que equivale a 2,9% da superfície do Brasil, sendo pouco maior que o Reino Unido. Sua capital é o município de São Paulo e seu atual governador é Tarcísio de Freitas."),Location(name: "Rio de Janeiro", coordinate: CLLocationCoordinate2D(latitude: -22.9035, longitude: -43.2096),flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Bandeira_do_estado_do_Rio_de_Janeiro.svg/280px-Bandeira_do_estado_do_Rio_de_Janeiro.svg.png",descricao:"Rio de Janeiro é uma das 27 unidades federativas do Brasil. Situa-se a sudeste da região Sudeste do país, tendo como limites os estados de Minas Gerais (norte e noroeste), Espírito Santo (nordeste) e São Paulo (sudoeste), além do Oceano Atlântico (leste e sul). Ocupa uma área de 43 750,425 km².[2] Os naturais do estado do Rio de Janeiro são chamados de fluminenses (do latim flumen, literalmente"),Location(name: "Minas Gerais", coordinate: CLLocationCoordinate2D(latitude: -19.9129985, longitude: -43.940933),flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f4/Bandeira_de_Minas_Gerais.svg/280px-Bandeira_de_Minas_Gerais.svg.png",descricao:"Minas Gerais é uma das 27 unidades federativas do Brasil, sendo o quarto estado com a maior área territorial e o segundo em quantidade de habitantes, localizada na Região Sudeste do país. Limita-se ao sul e sudoeste com São Paulo, a oeste com Mato Grosso do Sul, a noroeste com Goiás e Distrito Federal, a norte e nordeste com a Bahia, a leste com o Espírito Santo e a sudeste com o Rio de Janeiro. Seu território é subdividido em 853 municípios, a maior quantidade dentre os estados brasileiros.")]
    
    var body: some View {
        VStack {
            Map(coordinateRegion: $region, annotationItems: locais) { location in
                MapAnnotation(coordinate: location.coordinate) {
                    Circle().frame(width: 15).onTapGesture {
                        self.mostrarSheet = true
                    }
                }
            }.frame(height: 500).ignoresSafeArea()
                .sheet(isPresented: $mostrarSheet) {
                    Text("\(current_loc.name)")
                    AsyncImage(url: URL(string: current_loc.flag))
                    VStack{
                        Text("\(current_loc.descricao)")
                    }.padding(.leading)
                }
            ScrollView() {
                VStack {
                    ForEach(locais) { location in
                        Button("\(location.name)") {
                            current_loc = location
                            region.center = location.coordinate
                        }.buttonStyle(.borderedProminent)
                    }
                }
            }
        }
    }
}
struct aula05_Previews: PreviewProvider {
    static var previews: some View {
        aula05()
    }
}
