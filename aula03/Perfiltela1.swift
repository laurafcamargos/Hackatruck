//
//  Perfiltela1.swift
//  aula01-laurafcamargos
//
//  Created by Student07 on 03/03/23.
//

import SwiftUI

struct Perfiltela1: View {
    @State private var name: String = ""
    @State private var curso: String = ""
    @State private var idade: String = ""
    var body: some View {
        ZStack {
            Color(.red).padding(-100)
            VStack {
                TextField("Digite seu nome", text: $name).frame(width: 340.0).padding(.top,-90).multilineTextAlignment(.leading).textFieldStyle(RoundedBorderTextFieldStyle()).padding()
                TextField("Digite seu curso", text: $curso).frame(width: 340.0).padding(.top,-70).multilineTextAlignment(.leading).textFieldStyle(RoundedBorderTextFieldStyle()).padding()
                TextField("Insira sua idade",text: $idade).frame(width: 340.0).padding(.top,-50).multilineTextAlignment(.leading).textFieldStyle(RoundedBorderTextFieldStyle()).padding()

            }  }
    }
}

struct Perfiltela1_Previews: PreviewProvider {
    static var previews: some View {
        Perfiltela1()
    }
}
