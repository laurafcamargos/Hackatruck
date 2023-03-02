//
//  D2.swift
//  aula01-laurafcamargos
//
//  Created by Student07 on 01/03/23.
//

import SwiftUI

struct D2: View {
    var body: some View {
        VStack {
            Image("wallpaper").resizable()
                .aspectRatio(contentMode: .fit)
            VStack {
                Spacer()
                Text("HackaTruck").foregroundColor(.blue).bold().font(.system(size: 27))
                HStack {
                    Text("Maker").foregroundColor(.yellow).bold()
                    Text("Space").foregroundColor(.red).bold()
                }
            }
            
        }.padding()
    }
}
struct D2_Previews: PreviewProvider {
    static var previews: some View {
        D2()
    }
}
