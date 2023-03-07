//
//  D4.swift
//  aula01-laurafcamargos
//
//  Created by Student07 on 02/03/23.
//

import SwiftUI

struct D4: View {
    @State private var alert = false
    @State private var name: String = ""
    var body: some View {
        ZStack {
            Image("bg").resizable()
                .blur(radius: 3.0).opacity(0.1)
                .aspectRatio(1/1, contentMode: ContentMode.fill)
            VStack {
                Text("Bem vindo, \(name)!").font(.system(size: 38.0)).bold().padding()
                TextField("", text: $name).frame(width: 340.0).padding(.all).multilineTextAlignment(.center)
    
                Spacer()
                Image("logo").resizable().scaledToFit().frame(width: 250)
                Image("truck").resizable().scaledToFit().frame(width: 250)
                Spacer()
                Button("Entrar") {
                    alert = true
                }
                .alert(isPresented: $alert) {
                    Alert(
                        title: Text("ALERTA !").bold(),
                        message: Text("Você irá iniciar o desafio da aula agora"),
                        dismissButton: .default(Text("Vamos lá!"))
                    )
                   
                }
            }
        }
    }
}
struct D4_Previews: PreviewProvider {
    static var previews: some View {
        D4()
    }
}
