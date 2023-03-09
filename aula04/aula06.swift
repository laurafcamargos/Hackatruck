//
//  aula06.swift
//  aula04
//
//  Created by Student07 on 08/03/23.
//

import SwiftUI
struct Aluno: Identifiable{
       let id: Int
       let nome: String
   }

struct Turma: Identifiable {
       let id: Int
       let nome: String
       let alunos : [Aluno]
   }
struct aula06: View {
    @State private var selecao: UUID?
    @State private var alunos = [
    Turma(id: 1, nome: "Diurno", alunos: [Aluno(id: 1, nome: "Laura"),Aluno(id: 2, nome: "Luana")]),
        Turma(id: 2, nome: "Integral",alunos: [Aluno(id: 1, nome: "Rafaela"),Aluno(id: 2, nome: "JV")]),
        Turma(id: 3, nome: "Noturno",alunos: [Aluno(id: 1, nome: "Pedro"),Aluno(id: 2, nome: "JP")])]
    var body: some View {
        NavigationStack {
            List (selection: $selecao){
                ForEach(alunos){ nomes in
                    Section(header: Text(nomes.nome)) {
                        ForEach(nomes.alunos) { aluno in
                            Text(aluno.nome)
                        }
                    }
                }.navigationTitle("Turmas")
            }
        }
    }
}
struct aula06_Previews: PreviewProvider {
    static var previews: some View {
        aula06()
    }
}
