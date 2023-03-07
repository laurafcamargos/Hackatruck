//
//  D5.swift
//  aula01-laurafcamargos
//
//  Created by Student07 on 02/03/23.
//

import SwiftUI

struct D5: View {
    @State private var peso: Double = 0
    @State private var altura: Double = 0
    @State private var resultado: Double = 0
    @State private var valor: String = ""
    @State private var cor: String = "normal"
    func calculaIMC(peso: Double, altura: Double) -> Double {
        
        return peso / (altura * altura)
    }
    var body: some View {
        ZStack {
            VStack {
                Text("Calculadora de IMC").font(.system(size: 38.0)).bold().padding()
                TextField("",value: $peso, format: .number).frame(width: 340.0).padding(.all).multilineTextAlignment(.center).textFieldStyle(RoundedBorderTextFieldStyle())
                TextField("",value: $altura,format: .number).frame(width: 340.0).padding(.all).multilineTextAlignment(.center).textFieldStyle(RoundedBorderTextFieldStyle())
                Button("Calcular", action: {
                    resultado = calculaIMC(peso: peso, altura: altura)
                    if resultado < 18.5 {
                        valor = "Baixo peso"
                        cor = "baixo peso"
                    }
                    if resultado >= 18.5 && resultado < 24.99 {
                        valor = "Normal"
                        cor = "normal"
                    }
                    if resultado >= 25 && resultado < 29.99{
                        valor = "Sobrepeso"
                        cor = "sobrepeso"
                    }
                    if resultado > 30 {
                        valor = "Obesidade"
                        cor = "obesidade"
                    }
                
                }).padding(.all,27.0).background(.blue).foregroundColor(.white).cornerRadius(10.0)
                Text(valor).padding().font(.system(size: 38.0)).bold().padding().foregroundColor(.white)
                Spacer()
                Image("tabela-IMC").resizable().scaledToFit().frame(width: 500)
             
            }.background(Color(cor))
        }
    }
}
struct D5_Previews: PreviewProvider {
    static var previews: some View {
        D5()
    }
}
