//
//  File.swift
//  aula04
//
//  Created by Student07 on 06/03/23.
//

import Foundation

struct Sugestoes : Identifiable {
    var id: Int
    var nome_album: String
}

struct music : Identifiable {
    var id: Int
    var nome: String
    var cantor: String
    var capa: String
}
