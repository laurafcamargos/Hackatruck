//
//  D3.swift
//  aula01-laurafcamargos
//
//  Created by Student07 on 01/03/23.
//

import SwiftUI

struct D3: View {
    var body: some View {
            VStack {
                
                    Image("wallpaper").resizable()
                        .aspectRatio(contentMode: .fit)
                    Spacer()
                    Image("wallpaper").resizable().clipShape(Circle())
                        .frame(width: 400, height: 300).overlay(Text("HackaTruck").foregroundColor(.blue).bold().font(.system(size: 27)).padding(.top,-120))
                    Spacer()
                    HStack {
                        Text("Maker").foregroundColor(.yellow).padding([.top, .leading, .bottom], 30.0)
                        Text("Space").foregroundColor(.red).padding([.top, .bottom, .trailing], 30
                        )
                    }.background(Color(.black))
                }
                
            }
        }
struct D3_Previews: PreviewProvider {
    static var previews: some View {
        D3()
    }
}
