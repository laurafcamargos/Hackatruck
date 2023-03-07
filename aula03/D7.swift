//
//  D7.swift
//  aula01-laurafcamargos
//
//  Created by Student07 on 03/03/23.
//

import SwiftUI

struct D7: View {
    @State private var mostrarSheet = false
    var body: some View {
        NavigationStack {
            Spacer()
            NavigationLink {
                Perfiltela1()
            }label: {
                Text("Primeira Tela").bold().foregroundColor(.red)
            }
            NavigationLink {
                Perfiltela2()
            }label: {
                Text("Segunda Tela").bold().foregroundColor(.green)
            }.padding(100)
            Spacer()
            Button("Sheet") {
                        mostrarSheet.toggle()
                    }
                    .sheet(isPresented: $mostrarSheet) {
                        Perfiltela1()
                    }
                
            }
        }
    }

struct D7_Previews: PreviewProvider {
    static var previews: some View {
        D7()
    }
}
