//
//  Perfiltela2.swift
//  aula01-laurafcamargos
//
//  Created by Student07 on 03/03/23.
//

import SwiftUI

struct Perfiltela2: View {
    @State private var name: String = ""
    @State private var curso: String = ""
    @State private var idade: Double = 0
    var body: some View {
        ZStack {
            Color(.green).padding(-100)
            VStack {
                TextField("", text: $name).frame(width: 340.0).padding(.top,-90).multilineTextAlignment(.leading).textFieldStyle(RoundedBorderTextFieldStyle()).padding()
                TextField("", text: $curso).frame(width: 340.0).padding(.top,-70).multilineTextAlignment(.leading).textFieldStyle(RoundedBorderTextFieldStyle()).padding()
                TextField("",value: $idade, format: .number).frame(width: 340.0).padding(.top,-50).multilineTextAlignment(.leading).textFieldStyle(RoundedBorderTextFieldStyle()).padding()

            }  }
    }
}

struct Perfiltela2_Previews: PreviewProvider {
    static var previews: some View {
        Perfiltela2()
    }
}
